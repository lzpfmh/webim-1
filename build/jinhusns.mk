PRODUCT_NAME = jinhusns

PROJECT_NAME = git@github.com:webim/webim-plugin-jinhusns

REL = Webim

REL_STATIC = UI/static

include config.mk

SRC_FILES = ${PRODUCT_DIR}/*.md \
	    ${PRODUCT_DIR}/WebimPlugin/* \

all:
	@@mkdir -p ${REL_DIR}
	@@cp -r ${SRC_FILES} ${REL_DIR}/
	@@cp -R ${STATIC_DIR}/* ${REL_STATIC_DIR}/
	@@cd ${PRODUCT_DIST_DIR} && zip -r -q  ${REL_FILE} ${REL}
	@@cd ${PRODUCT_DIST_DIR} && rm -rf ${REL}

