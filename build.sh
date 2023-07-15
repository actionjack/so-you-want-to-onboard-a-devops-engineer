#!/bin/bash

guide="README.md"

build_guide () {
	docker run --rm \
       --volume "$(pwd):/data" \
       --user $(id -u):$(id -g) \
       pandoc/core source/*.md -o ${guide}
}

generate_toc () {
	docker run --rm \
     	--volume "$(pwd)":/app \
       	peterdavehello/npm-doctoc doctoc /app/${guide}
}

cleanup () {
	gsed -i 's/```{=html}/```/g' ${guide}
}

main () {
  build_guide
  generate_toc
  cleanup
}


main "$@"
