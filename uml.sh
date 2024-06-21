#!/bin/bash


tree_output=$(tree)

# Print the captured output (optional, for debugging)
echo "$tree_output"


# curl GET http://127.0.0.1:8000/debug/$tree_output
