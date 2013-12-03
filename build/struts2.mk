PRODUCT_NAME = struts2

PROJECT_NAME = git@github.com:webim/webim-plugin-struts2

REL = Webim

REL_STATIC = src/static

include config.mk

SRC_FILES = ${PRODUCT_DIR}/*.md \
		${PRODUCT_DIR}/*.txt \
	    ${PRODUCT_DIR}/Webim/.classpath \
	    ${PRODUCT_DIR}/Webim/.project \
	    ${PRODUCT_DIR}/Webim/.settings \
	    ${PRODUCT_DIR}/Webim/WebContent \
		${PRODUCT_DIR}/Webim/build \
		${PRODUCT_DIR}/Webim/doc \
		${PRODUCT_DIR}/Webim/resources \
		${PRODUCT_DIR}/Webim/src \
		${PRODUCT_DIR}/Webim/test \

all:
	@@mkdir -p ${REL_DIR}
	@@cp -r ${SRC_FILES} ${REL_DIR}/
	@@cp -R ${STATIC_DIR}/* ${REL_STATIC_DIR}/
	@@cd ${PRODUCT_DIST_DIR} && zip -r -q  ${REL_FILE} ${REL}
	@@cd ${PRODUCT_DIST_DIR} && rm -rf ${REL}

