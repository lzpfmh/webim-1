PRODUCT_NAME = thinkphp

PROJECT_NAME = git@github.com:webim/webim-plugin-thinkphp

REL = Webim

REL_STATIC = static

include config.mk

SRC_FILES = ${PRODUCT_DIR}/*.md \
	    ${PRODUCT_DIR}/Webim/*.php \
	    ${PRODUCT_DIR}/Webim/*.js \
	    ${PRODUCT_DIR}/Webim/Common \
	    ${PRODUCT_DIR}/Webim/Conf \
	    ${PRODUCT_DIR}/Webim/Lib \
	    ${PRODUCT_DIR}/Webim/Schema \
	    ${PRODUCT_DIR}/Webim/ThinkPHP \
		${PRODUCT_DIR}/Webim/Tpl \
	    ${PRODUCT_DIR}/Webim/static \

all: 
	@@mkdir -p ${REL_DIR}
	@@cp -r ${SRC_FILES} ${REL_DIR}/
	@@cp -R ${STATIC_DIR}/* ${REL_STATIC_DIR}/
	@@cd ${PRODUCT_DIST_DIR} && zip -r -q  ${REL_FILE} ${REL}
	@@cd ${PRODUCT_DIST_DIR} && rm -rf ${REL}

include common.mk

