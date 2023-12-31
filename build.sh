#!/bin/bash
# Author: https://github.com/mohabaks
# Description: Build docker images form a Dockerfile

flag_a=false
flag_n=false
flag_t=false
tag="local"

# check if podman is installed
if which podman  &>/dev/null;then
  alias docker=podman
fi

msg_success() {
  echo -e "[+]\033[32m $@ \033[0m"
}

msg_error() {
  echo -e "[-]\033[31m $@ \033[0m"
}

help() {
cat <<EOF
Usage: ./build.sh [OPTIONS]
Build docker images from Dockerfile.

Options:
    -a          Build all the Dockerfiles found in the current directory
    -n          Build a specific Dockerfile
    -t          Tag name (e.g., name:tag) for all dockerfiles; default is 'local'
    -h          Show this help message

Examples:
    ./build.sh -a -t example.com default
    ./build.sh -n jadx -t jadx:latest
EOF
}

build_dockerfiles() {
  for dir in *; do
    if [ -f "$dir/Dockerfile" ]; then
      msg_success "Building $dir"
      docker build --network host -t "$1" "$dir"
      clean
    fi
  done
}

build_dockerfile() {
  if [ -f "$2/Dockerfile" ]; then
    msg_success "Building $2"
    docker build --network host -t "$1" "$2"
    clean
  fi
}

clean(){
  docker rmi $(docker images|grep none|awk '{print $3}') 2> /dev/null
}

main() {
  if [ $# -eq 0 ]; then
    help
    exit
  else
    while :; do
      case $1 in
        -h)
          help
          exit
          ;;
        -a)
          flag_a=true
          ;;
        -n)
          flag_n=true
          name=$2
          shift
          ;;
        -t)
          flag_t=true
          tag=$2
          shift
          ;;
        *)
          break
          ;;
      esac
      shift
    done
  fi

  if $flag_a && $flag_n; then
    msg_error "You can't use both -n and -a options; see help menu"
    exit 1
  elif $flag_a && $flag_t; then
    build_dockerfiles "$tag"
  elif $flag_a; then
    build_dockerfiles "$tag"
  elif $flag_n && $flag_t; then
    build_dockerfile "$tag" "$name"
  elif $flag_n; then
    build_dockerfile "${tag}/${name}" "$name"
  fi
}

main "$@"
