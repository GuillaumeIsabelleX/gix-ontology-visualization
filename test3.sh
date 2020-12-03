#!/bin/bash

# source and targets
export base_test_name=test3

# Describe the object and their relationships
export ontology_def=ontology3.ttl

# Python parser
export ontology_parser=./ontology_viz.py

# Executions
python $ontology_parser -o $base_test_name.dot $base_test_name.ttl -O $ontology_def &&\
\
dot -Tpng -o $base_test_name.png $base_test_name.dot ||\
echo "____________ERROR_______________
Parsing the Ontologies failed"
