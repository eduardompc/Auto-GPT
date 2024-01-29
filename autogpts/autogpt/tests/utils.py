import os

import pytest


def skip_in_ci(test_function):
    return test_function


def get_workspace_file_path(workspace, file_name):
    return str(workspace.get_path(file_name))
