PRODUCT_NAME = thinksns

PROJECT_NAME = git@github.com:webim/webim-plugin-thinksns

REL = Webim

REL_STATIC = static

include config.mk

SRC_FILES = ${PRODUCT_DIR}/*.md \
	    ${PRODUCT_DIR}/*.php \
	    ${PRODUCT_DIR}/*.sql \
	    ${PRODUCT_DIR}/*.js \
	    ${PRODUCT_DIR}/conf \
	    ${PRODUCT_DIR}/hooks \
	    ${PRODUCT_DIR}/html \
	    ${PRODUCT_DIR}/lib \
		${PRODUCT_DIR}/model \
	    ${PRODUCT_DIR}/static \

all: 
	@@mkdir -p ${REL_DIR}
	@@cp -r ${SRC_FILES} ${REL_DIR}/
	#@@cp -R ${STATIC_DIR}/* ${REL_STATIC_DIR}/
	@@cd ${PRODUCT_DIST_DIR} && zip -r -q  ${REL_FILE} ${REL}
	@@cd ${PRODUCT_DIST_DIR} && rm -rf ${REL}

include common.mk

