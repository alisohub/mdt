#!/bin/sh

# If no arguments are passed, find the last modified file in MDT_DIR and run mdt with -i option
if [ $# -eq 0 ]; then
    # Use the find command to locate files in the specified directory, 
    # sort them by modification time, and return the most recently modified file
    last_modified_file=$(find "$MDT_DIR" -type f -printf '%T@ %p\n' | sort -n | tail -1 | awk '{print $2}')
    
    # If a file was found, remove the .md extension from its name and print it to the console
    # Run mdt with the -i option to open the file in interactive mode
    if [ -n "$last_modified_file" ]; then
        last_file=$(basename "$last_modified_file" .md)
        gum spin --spinner moon --title "$last_file" \
            -- sleep 0.5 
        mdt -i "$last_modified_file"
    # If no files were found, create a new todo.md file in the directory and open it in interactive mode
    else
        printf "Default todo created\n"
        todo_file="$MDT_DIR/todo.md"
        echo "# todo" > "$todo_file"
        mdt -i "$todo_file"
    fi
# If arguments are passed, run mdt with the provided arguments
else
    mdt "$@"
fi

### Commented by ChatGPT
