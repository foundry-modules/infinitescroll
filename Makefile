include ../../build/modules.mk

MODULE = infinite-scroll
FILENAME = ${MODULE}.js
SOURCE = jquery.${MODULE}.js
PRODUCTION = ${PRODUCTION_DIR}/${FILENAME}
DEVELOPMENT = ${DEVELOPMENT_DIR}/${FILENAME}

all:
        ${MODULARIZE} -jq -n "${MODULE}" ${SOURCE} > ${DEVELOPMENT}
        ${UGLIFYJS} ${DEVELOPMENT} > ${PRODUCTION}
