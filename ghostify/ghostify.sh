#!/usr/bin/env bash

function ghostify() {

	TARGET_PATH="${1:-}"
	TARGET_FILE_TYPES="${2:-'php\|py\|pl'}"

	echo "Scanning for ${TARGET_FILE_TYPES}"

	for filename in $(find "${TARGET_PATH}" -regex ".*\.\(${TARGET_FILE_TYPES}\)$" -not -type d); do
		echo "Ghostifying file $filename"
		echo >"$filename" # Truncate
	done
}

