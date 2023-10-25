#!/bin/bash

guide="README.md"

build_guide_simple() {
	cat source/*.md > ${guide}
}

build_guide () {
	docker run --rm \
       --volume "$(pwd):/data" \
       --user $(id -u):$(id -g) \
       pandoc/core source/*.md -f gfm -o ${guide}
}

generate_toc () {
	docker run --rm \
     	--volume "$(pwd)":/app \
       	peterdavehello/npm-doctoc doctoc /app/${guide}
}

main () {
  build_guide_simple
  generate_toc
}


main "$@"
