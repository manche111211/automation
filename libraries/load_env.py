from dotenv import load_dotenv
import os

# Load environment variables at import time so both class and module-level
# keywords have access without requiring explicit initialization.
load_dotenv()

class LoadEnv:
    def __init__(self):
        # Kept for backward compatibility if class-based usage is preferred.
        # Environment variables are already loaded at import time.
        pass

    def get_env(self, name, default=None):
        """Return an environment variable by name"""
        return os.getenv(name, default)


# Expose a module-level function so Robot Framework can discover the
# `Get Env` keyword when importing this file directly as a library.
def get_env(name, default=None):
    """Return an environment variable by name.

    This function is exposed as a Robot Framework keyword `Get Env` when
    importing this module via a file path in the settings.
    """
    return os.getenv(name, default)

BASE_URL = get_env("BASE_URL")
BEARER_TOKEN = get_env("BEARER_TOKEN")