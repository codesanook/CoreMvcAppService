#!/bin/bash
ls

set -e
run_cmd="dotnet watch run --urls http://*:5000"

exec $run_cmd
