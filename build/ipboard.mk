PRODUCT_NAME = ipboard

PROJECT_NAME = git@github.com:webim/webim-plugin-ipboard

REL = webim

REL_STATIC = static

include config.mk

SRC_FILES = ${PRODUCT_DIR}/*.php \
	    ${PRODUCT_DIR}/*.md \
	    ${PRODUCT_DIR}/*.js \
	    ${PRODUCT_DIR}/lib \
	    ${PRODUCT_DIR}/static \

all: deps
	@@mkdir -p ${REL_DIR}
	@@cp -r ${SRC_FILES} ${REL_DIR}/
	@@rm -rf ${REL_DIR}/lib/.git
	@@cat ${PRODUCT_DIR}/config.php | ${REPLACE_VER} > ${REL_DIR}/config.php
	@@cp -R ${STATIC_DIR}/* ${REL_STATIC_DIR}/
	@@cd ${PRODUCT_DIST_DIR} && zip -r -q ${REL_FILE} ${REL}
	@@cd ${PRODUCT_DIST_DIR} && rm -rf ${REL}

include common.mk

