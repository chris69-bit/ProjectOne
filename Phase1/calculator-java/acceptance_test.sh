#!/bin/bash

test $(curl localhost:8089/sum?a=1\&b=2) -eq 3
