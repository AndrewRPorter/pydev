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

- vscode: Open source text editor with git integration
- pip3: Tool for installing python packages
- vim: CLI text editor
- git: Version control
- tldr: Simplfied MAN pages
- bat: Modern replacement of ``cat`` written in Rust
- exa: Replacement for ``ls`` written in Rust
- ripgrep: Replacement for ``grep`` written in Rust
- curl: CLI tool for transferring data
- cloc: Tool to count lines of code
- zsh: Bash alternative shell

Python Packages
---------------

- requests: Python HTTP library
- flase: micro web framework for python
- PYYaml: YAML parser and emitter for Python
- gunicorn: Python WSGI HTTP Server for UNIX
- jinaj2: Template engine
- black: General python linter
- isort: Package import linter
- virtualenv: A tool for creating isolated 'virtual' python environments
- sklearn: Machine learning library for python
- pandas: Data manipulation and analysis
- numpy: Data manipulation and analysis
- matplotlib: Graphing tools

Notes
-----

You may need to restart your computer to see ZSH as your default shell.

`echo $SHELL` will output the shell environment variable that is currently in use and is not reset until reboot.
