# checkhash

bash script for shellcheck and 

## Checkhash

### To create file

- docker pull centos
- docker run -dit centos
- docker exec -it <container_id> /bin/bash

- touch checkhash.sh
- vi checkhash.sh
- :wq
- chmod +x checkhash.sh
- ./checkhash.sh

### To run  shellcheck and shfmt

- scversion="stable" # or "v0.4.7", or "latest"
- wget -qO- "https://github.com/koalaman/shellcheck/releases/download/${scversion?}/shellcheck-${scversion?}.- linux.x86_64.tar.xz" | tar -xJv
- cp "shellcheck-${scversion}/shellcheck" /usr/bin/
- shellcheck --version
- shellcheck checkhash.sh

- Make sure you have golang installed
- yum install go is not enough as shfmt requires go17+
- <https://computingforgeeks.com/install-go-golang-on-centos-rhel-linux/>

- go install mvdan.cc/sh/v3/cmd/shfmt@latest
- ./root/go/bin/shfmt checkhash.sh

## Mac kernel version

- uname -av

## Pulling Nginx docker image

docker pull kkmelh4/nginx
