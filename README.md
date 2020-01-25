Build docker container with `docker build --tag wee-slack:latest . --no-cache`

Run with `docker run --rm -it -v /etc/localtime:/etc/localtime:ro -v "${HOME}/.weechat:/home/user/.weechat" -u $(id -u ${USER}):$(id -g ${USER}) wee-slack`
