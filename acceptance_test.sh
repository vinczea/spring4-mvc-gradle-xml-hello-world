#!/bin/bash
test "$(curl localhost:8765/)" -eq "index"