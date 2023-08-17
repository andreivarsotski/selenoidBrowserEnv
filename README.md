To launch selenoid local env use the following tips:
1. install all required staff: docker, asdf, docker-compose, etc
2. do `asdf install` in command line, and libs from `.tool-versions` would be installed.
3. launch selenoid, selenoid-ui and browser container with command `make start_env`

There is two command to start selenoid env or relaunch one

```shell
make start_env
make relaunch_env
```