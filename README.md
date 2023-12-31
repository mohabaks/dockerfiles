## About

This repository contains Dockerfiles for various tools I use for CTFs/BugBounty. Using
containers provides me with the flexibility and convenience of running these tools
without the need for dedicated virtual machines, making it ideal for my low-power
laptop and reducing the hassle of managing different environments.

> Some of the Dockerfiles included in this repository are collected from other projects and have been slightly modified. All credit and thanks for those Dockerfiles belong to their original authors and contributors.

## Installation

Make sure you have either Docker or Podman installed on your system:
- Docker Installation: [Get Docker](https://docs.docker.com/get-docker/)
- Podman Installation: [Install Podman](https://podman.io/getting-started/installation)

1. To quickly build the Docker images, use the provided build script:
  
   ```sh
   $ # Clone the repo
   $ git clone https://github.com/mohabaks/dockerfiles.git
   $ cd dockerfile
   $ # Build all Dockerfiles:
   $ ./build.sh -a
   $ # Build a specific image, such as nmap
   $ ./build.sh -n nmap -t nmap:latest
   $ # For more options, refer to the help menu:
   $ ./build.sh -h
   ```
2. Alternatively you can user [terraform](https://www.terraform.io/) to build images:

   ```sh
   $ cd terraform
   $ terraform init
   $ terrafrom apply
   ```
3. Source the provided sample [.dockerfunc](https://github.com/mohabaks/dockerfiles/blob/main/.dockerfunc).The script define the podman commands used to run the containers. Feel free to adjust the container settings, volumes, or other parameters according to your needs:

    ```sh
    $ source .dockerfunc
    $ # e.g run nmap from previous build image
    $ nmap -h
    ```

## Preview

Check out the animated preview below to see the container images in action:

![preview](https://github.com/mohabaks/dockerfiles/blob/main/preview.gif)

  
## Contribution

Contributions to this repository are welcome! If you have tools or improvements
to share, feel free to fork this repository, make your changes, and submit a pull request :thumbsup:

## Feedback and Support

I welcome any feedback, suggestions, or bug reports related to these Docker images.
If you encounter any issues or have questions, please open an issue in the repository.