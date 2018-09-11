#!/usr/bin/env python2.7

from ConfigParser import RawConfigParser
from os import path
import os
import re

dirname = path.dirname(path.realpath(__file__))
ip_regex = re.compile("^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$")
config = RawConfigParser(allow_no_value=True)
with open(os.environ['INVENTORY']) as inventory:
    config.readfp(inventory)

hosts = set()
for key in config.sections():
    for host in config.options(key):
        if ip_regex.match(host) and host != "127.0.0.1":
            hosts.add(host)

for host in hosts:
    print(host)
