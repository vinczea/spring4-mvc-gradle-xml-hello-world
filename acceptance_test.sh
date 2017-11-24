#!/bin/bash
test $(curl 172.19.0.3:8765/) -eq "index"