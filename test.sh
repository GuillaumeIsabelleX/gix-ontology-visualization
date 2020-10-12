#!/bin/bash

python  ./ontology_viz.py -o test.dot test.ttl -O ontology.ttl

dot -Tpng -o test.png test.dot
