all: modularize-script minify-script

include ../../build/modules.mk

MODULE = infinitescroll
MODULARIZE_OPTIONS = -jq
SOURCE_SCRIPT_FOLDER = .