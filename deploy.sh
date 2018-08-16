#!/bin/bash

sudo docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material gh-deploy
