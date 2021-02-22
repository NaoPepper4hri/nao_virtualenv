## Virtual environment for Python2.7 in NAO
This package provides a virtual environment ready to be installed in NAO's computer and allow the installation of custom modules using pip.

## Installation

1. Clone this repository:

```
git clone https://github.com/gimait/nao_virtualenv
```

2. Copy the environment to NAO:

    ```
    scp -r nao_virtualenv/venv nao@<nao's ip>:/home/nao/venv
    ```

    When prompted, enter Nao's **user** password.

3. Log into NAO via ssh and install the environment.

    ```
    ssh nao@<nao's ip>

    ./venv/bin/install.sh
    ```

    To activate the environment (you should do this any time you log in):

    ```
    source venv/bin/activate
    ```

    If you wish to load the environment automatically when logging in the robot, use the `--auto` option of the install script, then you will be asked to enter a password.
    When prompted, enter the **root** password.


## Uninstall

To uninstall the environment, simply delete the venv folder.

NOTE: When installing with the auto option, we are adding a new line to ```/etc/profile``` sourcing the environment. If you wish to uninstall cleanly this environment, you should delete that line (it will most likely be the last one in the file, unless you have added something else).

