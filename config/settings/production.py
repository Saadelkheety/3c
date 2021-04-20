from .base import *

DEBUG = False

STATIC_ROOT = os.path.join(BASE_DIR, 'static')

try:
    from .local import *
except ImportError:
    pass
