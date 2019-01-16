=====
PyDev
=====

Installation scripts used to bring a fresh installation to a python development environment.

Usage
-----

.. code:: shell

        wget -O - https://raw.githubusercontent.com/AndrewRPorter/pyenv/master/install.sh | bash

 or

 .. code:: shell

        git clone git@github.com:AndrewRPorter/pydev.git      
        cd pydev
        ./install.sh

Included Software
-----------------

- pip3: Tool for installing python packages
- vim: CLI text editor
- git: Version control
- unzip: Easy unzipping software to manage .zip files from the CLI
- gnome-terminal: terminal emulator for GNOME desktop enviornment
- tldr: Simplfied MAN pages
- bat: Modern replacement of ``cat`` written in Rust
- exa: Replacement for ``ls`` written in Rust
- ripgrep: Replacement for ``grep`` written in Rust
- curl: CLI tool for transferring data
- cloc: Tool to count lines of code

Python Packages
---------------

- requests: Python HTTP library
- django: Python web framework
- PYYaml: YAML parser and emitter for Python
- boto3: Amazon Web Services (AWS) Software Development Kit (SDK) for Python
- gunicorn: Python WSGI HTTP Server for UNIX
- black: Python code formatter
- virtualenv: A tool for creating isolated 'virtual' python environments
- isort: A Python utility to sort imports
- pytest: Python testing framework

Notes
-----

To make spacevim suitable for python development, make sure to add the python language layer
to the spacevim configuration file: ~/.SpaceVim.d/init.toml

.. code:: bash

  [[layers]]
  name = "lang#python"

