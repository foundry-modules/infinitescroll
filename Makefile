all: modularize minify

include ../../build/modules.mk

MODULE = infinitescroll
MODULARIZE_OPTIONS = -jq
SOURCE_DIR = .