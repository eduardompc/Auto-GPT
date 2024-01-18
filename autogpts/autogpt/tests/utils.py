import os

import pytest


def skip_in_ci(test_function):
    return pytest.mark.skipif(
        os.environ.get("CI") == "true",
        reason="This test is being excluded from GitHub Actions.",
    )(test_function)


def get_workspace_file_path(workspace, file_name):
    return str(workspace.get_path(file_name))
