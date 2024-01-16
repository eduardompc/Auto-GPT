import os

import pytest


def skip_in_ci(test_function):
    return pytest.mark.skipif(
        'GITHUB_ACTIONS' in os.environ and os.environ.get("CI") == "true",
        reason="Skip the test(s) in the GitHub Actions environment.",
    )(test_function)


def get_workspace_file_path(workspace, file_name):
    return str(workspace.get_path(file_name))
