# Devilbox environment

**Clone project**

    git clone --recurse-submodules https://github.com/mrLexx/devilbox-environment.git

**Make excetute scripts in bin dir:**

    chmod +x ./bin/*.sh

**Create link in HOME dir [optional]**

    ln -s `realpath ./bin/up.sh` ~/up.sh
    ln -s `realpath ./bin/stop.sh` ~/stop.sh
    ln -s `realpath ./bin/restart.sh` ~/restart.sh
    ln -s `realpath ./bin/shell.sh` ~/shell.sh
    ln -s `realpath ./bin/shell56.sh` ~/shell56.sh
    ln -s `realpath ./bin/shell74.sh` ~/shell74.sh
    ln -s `realpath ./bin/shell82.sh` ~/shell82.sh

**Required files**

`./config/.env` <br>
`./config/secrets.env` <br>
`./config/docker-compose.override.yml` <br>

**Commands for work**

run:  `~/up.sh` <br>
stop:  `~/stop.sh` <br>
restart:  `~/restart.sh` <br>
enter to shell:  `~/shell.sh` <br>
enter to custom  shell XX: `~/shellXX.sh` <br>