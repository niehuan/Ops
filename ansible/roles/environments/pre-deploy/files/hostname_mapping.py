#!/usr/bin/env python
# author: zhangdt

import argparse
import yaml

p = argparse.ArgumentParser(description="hostname mapping")
p.add_argument("--master_node")
p.add_argument("--data_node")
p.add_argument("--client_node")
p.add_argument("--kafka_node")
args = p.parse_args()

hosts = {'all': "", 'hosts': {}}


def generateHostMappings(name, nodes):
    count = 1
    if nodes and nodes != "[]":
        for node in str(nodes).replace("[", "").replace("]", "").split(","):
            if len(node.split(".")) == 4 or node == "localhost":
                if name == "mn":
                    hosts['hosts'].setdefault(node, []).append('%s' % name)
                else:
                    hosts['hosts'].setdefault(node, []).append('%s%s' % (name, count))
                    count += 1


generateHostMappings("dn", args.data_node)
generateHostMappings("mn", args.master_node)
generateHostMappings("cn", args.client_node)
generateHostMappings("kn", args.kafka_node)

hosts['all'] = '\n'.join(["%s\t%s" % (i, " ".join(hosts['hosts'][i])) if i !="127.0.0.1" else "" for i in hosts['hosts']])

for i in hosts['hosts']:
    hosts[i] = " ".join(hosts['hosts'][i])
del hosts['hosts']

print(yaml.dump(hosts, default_flow_style=False))
