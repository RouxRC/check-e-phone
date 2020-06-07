#!/usr/bin/env python

import os
import json

with open(os.path.join("data", "versions.json")) as f:
    data = json.load(f)

print "color,in_stock,price,quantity"
for v in data:
    print ",".join([str(x) for x in [v["attributes"]["attribute_pa_s7-finish"], v["is_in_stock"], v["display_price"], v["max_qty"] or 0]])
