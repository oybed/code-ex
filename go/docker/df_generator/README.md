#### Build Instructions

**PREP - only done once**

1. Make sure go is installed and owned by your user, e.g.: as root run:
  - mkdir /opt/local
  - tar -xvzf \<path_to_go_tarball\> -C /opt/local/
  - chown -R \<user\> /opt/local/go

2. Ensure GOROOT is set correctly, e.g.:
  - export GOROOT=/opt/local/go

3. Execute the prep build
  - ./prep-build.sh 

**Builds**

1. Ensure GOROOT is set correctly, e.g.:
  - export GOROOT=/opt/local/go
2. Execute ./build.sh
