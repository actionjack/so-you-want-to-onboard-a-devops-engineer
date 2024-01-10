#!/bin/bash

guide="README.md"

add_newline() {
  file="$1"
  last_char=$(tail -c 1 "$file" 2>/dev/null)

  # Check if the last character is not a newline
  if [ "$last_char" != "" ]; then
    echo "" >> "$file"
    echo "Added a newline to $file"
  fi
}

add_newline_to_md() {
  for file in source/*.md
    do add_newline ${file}
  done
}

build_guide() {
	cat source/*.md > ${guide}
}

generate_toc () {
	docker run --rm \
     	--volume "$(pwd)":/app \
       	peterdavehello/npm-doctoc doctoc /app/${guide}
}

main () {
  add_newline_to_md
  build_guide
  generate_toc
}


main "$@"
