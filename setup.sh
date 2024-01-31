#!/bin/bash

if [[ "$OSTYPE" == "cygwin" ]] || [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "win32" ]]; then
    echo "This script cannot be run on Windows."
    echo "Please follow the installation instructions at https://docs.python.org/3/using/windows.html"
    echo "To install poetry on Windows, please follow the instructions at https://python-poetry.org/docs/master/#installation"
    
    exit 1
else
    if ! command -v python3 &> /dev/null
    then
        echo "python3 could not be found"
        echo "Installing python3 using pyenv..."
        if ! command -v pyenv &> /dev/null
        then
            echo "pyenv could not be found"
            echo "Installing pyenv..."
            curl https://pyenv.run | bash
        fi
        pyenv install 3.11.5
        pyenv global 3.11.5
    fi

    if [[ ! -f ./pyproject.toml ]]
    then
        echo "pyproject.toml file not found"
        echo "Creating new pyproject.toml file..."
        # Add commands to create a new pyproject.toml file
    fi
    
    then
        echo "poetry could not be found"
        echo "Installing poetry..."
        curl -sSL https://install.python-poetry.org | python3 -
    fi
fi
