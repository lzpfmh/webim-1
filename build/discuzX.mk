include build/config.mk

PRODUCT_NAME = discuzX
MODULE_NAME = ${PRODUCT_NAME}
PRODUCT_DIR = ${PREFIX}/${PRODUCT_NAME}
STATIC_DIR = ${PRODUCT_DIR}/static
DIST_DIR = ${UI_DIST_DIR}/${PRODUCT_NAME}

include build/include.mk

