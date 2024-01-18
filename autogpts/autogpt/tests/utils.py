import os

import pytest


def skip_in_ci(test_function):
    return pytest.mark.skipif(
        os.getenv("GITHUB_ACTIONS") == "true",
        reason="Skipping the test in GitHub Actions workflow.",
    )(test_function)


@skip_in_ci
def get_workspace_file_path(workspace, file_name):
    return str(workspace.get_path(file_name))
