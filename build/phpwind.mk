PRODUCT_NAME = phpwind

PROJECT_NAME = git@github.com:webim/webim-plugin-phpwind

REL = webim

REL_STATIC = static

include config.mk

SRC_FILES = ${PRODUCT_DIR}/*.php \
	    ${PRODUCT_DIR}/*.md \
	    ${PRODUCT_DIR}/*.js \
	    ${PRODUCT_DIR}/lib \
	    ${PRODUCT_DIR}/static \
	    ${PRODUCT_DIR}/admin \
	    ${PRODUCT_DIR}/table \

all: deps
	@@mkdir -p ${REL_DIR}
	@@cp -r ${SRC_FILES} ${REL_DIR}/
	@@rm -rf ${REL_DIR}/lib/.git
	@@rm -rf ${REL_DIR}/config.php
	@@cp -R ${STATIC_DIR}/* ${REL_STATIC_DIR}/
	@@cat ${PRODUCT_DIR}/config_sample.php | ${REPLACE_VER} > ${REL_DIR}/config_sample.php
	@@cat ${PRODUCT_DIR}/common.php | ${REPLACE_VER} > ${REL_DIR}/common.php
	@@cd ${PRODUCT_DIST_DIR} && zip -r -q ${REL_FILE} ${REL}
	@@cd ${PRODUCT_DIST_DIR} && rm -rf ${REL}

include common.mk

