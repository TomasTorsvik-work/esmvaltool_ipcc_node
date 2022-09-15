#!/bin/bash

# defaults
NODES=1
RECIPE=""

VALID_ARGS=$(getopt -o r:n:h --long recipe:,nodes:,help -- "$@")
if [[ $? -ne 0 ]]; then
    echo "Invalid command option"
    exit 1;
fi

eval set -- "$VALID_ARGS"
while [ : ]; do
    case "$1" in
        -r | --recipe)
            echo "Run recipe: $2"
            RECIPE=$2
            shift 2
            ;;
        -n | --nodes)
            NODES=$2
            shift 2
            ;;
        -h | --help)
            echo "Usage: $(basename $0) [-r|--recipe arg] [-n|--nodes arg] [-h|--help]"
            exit 0
            ;;
        --) shift;
            break
            ;;
    esac
done

echo "ESMValTool recipe: $RECIPE"
echo "max_parallel_tasks: $NODES"

sed "s|max_parallel_tasks: 1|max_parallel_tasks: $NODES|" config-ipcc_node.yml > config-run_esmvaltool.yml
esmvaltool run --config_file=config-run_esmvaltool.yml $RECIPE
rm config-run_esmvaltool.yml
