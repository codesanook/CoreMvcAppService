#!/bin/bash
ls

set -e
run_cmd="dotnet watch run --urls http://*:80"

exec $run_cmd
