#!/bin/bash
find . -name *~
find . -name *~ -exec rm -f {} +
find . -name *.pyc
find . -name *.pyc -exec rm -f {} +

find . -name *.swp
find . -name *.swp -exec rm -f {} +
