#!/bin/bash

./download.sh > data/versions.json
./convert.py  > data/versions.csv

