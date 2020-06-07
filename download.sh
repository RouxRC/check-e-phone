#!/bin/bash

curl -skL https://e.foundation/product/e-os-galaxy-s7-edge-refurbished/ |
 grep is_in_stock |
 sed 's/^.*data-product_variations="//' |
 sed 's/">.*$//' |
 perl -MHTML::Entities -pe 'decode_entities($_);' |
 python -m json.tool
