#!/bin/sh -l

if [ ! -z "$WORKING_DIRECTORY" ]
then
      cd "$WORKING_DIRECTORY"
fi

if [ ! -z "$REQUIREMENTS_FILE" ]
then
      pip install -r "$REQUIREMENTS_FILE"
fi

if [ -z "$PROJECT_DIR" ]
then
      chalice "$OPERATION"
else
      chalice --project-dir "$PROJECT_DIR" "$OPERATION"
fi
