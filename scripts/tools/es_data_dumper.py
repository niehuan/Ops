#!/usr/bin/env python
# author: zhangdt

import argparse
from datetime import datetime
from elasticsearch import Elasticsearch
from elasticsearch import helpers
from elasticsearch import exceptions

now = datetime.now()
p = argparse.ArgumentParser(description="es-sql-engine-keepalive")
p.add_argument("--export", "-e", action="store_true",
               help="use this param when export data to file")
p.add_argument("--delete", "-d", action="store_true",
               help="CAUTION: DELETE ALL DATA FOR DATASOURCE")
p.add_argument("--start", default="2000-01-09T16:49:48",
               help="default: 2000-01-09T16:49:48")
p.add_argument("--end", default=now, help="default: %s" % now)
p.add_argument("--source", help="source name")
p.add_argument("--output", "-o", default="dump.json",
               help="accepts absolute and relative path, default: dump.json")
p.add_argument("--es", default="127.0.0.1:9200", help="host1:port,host2:port")
args = p.parse_args()

ip = args.es.split(",")
sourceName = args.source
startTime = args.start
endTime = args.end

es = Elasticsearch(hosts=ip)

try:
    if(args.export):
        with open(args.output, "a") as dumped:
            body = {"_source": {"includes": ["full_message"], "excludes": []}, "query": {"bool": {"filter": [{"query_string": {"query": "* "}}, {"range": {"timestamp": {"gte": startTime, "lte": endTime, "time_zone": "Asia/Shanghai"}}}]}}}
            res = helpers.scan(es, query=body, scroll="5m", index=sourceName)
            for i in res:
                dumped.write("%s\n" % 
                             i['_source']['full_message'].encode('utf8'))
    elif(args.delete):
        es.delete_by_query(index=sourceName,
                        body={"_source": {"includes": [], "excludes": []}, "query": {"bool": {"filter": [{"query_string": {"query": "*"}}, {"range": {"timestamp": {"gte": startTime, "lte": endTime, "time_zone": "Asia/Shanghai"}}}]}}})
    else:
        print("NOTHING TODO")

except exceptions.NotFoundError:
    print("DATASOURCE %s NOT FOUND" % sourceName)
except Exception as e:
    print(e)
