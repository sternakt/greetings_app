#!/bin/bash

echo "Running pyup_dirs..."
pyup_dirs --py38-plus --recursive greetings_app tests

echo "Running ruff..."
ruff greetings_app tests --fix

echo "Running black..."
black greetings_app tests
