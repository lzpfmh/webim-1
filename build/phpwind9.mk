PRODUCT_NAME = phpwind9

PROJECT_NAME = git@github.com:webim/webim-plugin-phpwind9

REL = webim

REL_STATIC = res

include config.mk

SRC_FILES = ${PRODUCT_DIR}/*.md \
	    ${PRODUCT_DIR}/*.xml \
	    ${PRODUCT_DIR}/admin \
	    ${PRODUCT_DIR}/conf \
	    ${PRODUCT_DIR}/controller \
	    ${PRODUCT_DIR}/lib \
	    ${PRODUCT_DIR}/res \
	    ${PRODUCT_DIR}/service \
	    ${PRODUCT_DIR}/template \

all: deps
	@@mkdir -p ${REL_DIR}
	@@cp -r ${SRC_FILES} ${REL_DIR}/
	@@rm -rf ${REL_DIR}/lib/.git
	#@@cp -R ${STATIC_DIR}/* ${REL_STATIC_DIR}/
	@@cd ${PRODUCT_DIST_DIR} && zip -r -q  ${REL_FILE} ${REL}
	@@cd ${PRODUCT_DIST_DIR} && rm -rf ${REL}

include common.mk

