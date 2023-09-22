#!/bin/bash

# Define the source and target directories
SRC_DIR="/share/"
TARGET_DIR="/host/"

# Create the target directory if it doesn't exist
if [ ! -d "$TARGET_DIR" ]; then
  mkdir -p "$TARGET_DIR"
fi

# Mirror the repository
rsync -av --relative "$SRC_DIR" "$TARGET_DIR"

# Explanation of the rsync options:
# -a: archive mode, which preserves permissions, ownership, timestamps, etc.
# -v: verbose mode, which shows the files being copied
# --delete: delete files in the target directory that are not present in the source directory
# --relative: use relative paths to preserve the directory structure
# "$SRC_DIR": the source directory (only includes the work_folder directory)
# "$TARGET_DIR": the target directory
