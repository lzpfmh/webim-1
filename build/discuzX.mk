PRODUCT_NAME = discuzX
PROJECT_NAME = https://github.com/webim/webim-plugin-discuzX
REL = webim
REL_STATIC = static

include config.mk

SRC_FILES = ${PRODUCT_DIR}/*.php \
	    ${PRODUCT_DIR}/*.md \
	    ${PRODUCT_DIR}/*.js \
	    ${PRODUCT_DIR}/lib \
	    ${PRODUCT_DIR}/static \

PLUGIN_FILE = ${PRODUCT_DIR}/discuz_plugin_webim.xml
PLUGIN_FILE_UTF8 = ${REL_DIR}/discuz_plugin_webim_SC_UTF8.xml

all: deps
	@@mkdir -p ${REL_DIR}
	@@cp -r ${SRC_FILES} ${REL_DIR}/
	@@cp -R ${STATIC_DIR}/* ${REL_STATIC_DIR}/
	@@cat ${PRODUCT_DIR}/config.php | ${REPLACE_VER} > ${REL_DIR}/config.php
	@@cat ${PRODUCT_DIR}/common.php | ${REPLACE_VER} > ${REL_DIR}/common.php
	@@cat ${PLUGIN_FILE} | ${REPLACE_VER} > ${PLUGIN_FILE_UTF8}
	@@iconv -f UTF-8 -t GBK ${PLUGIN_FILE_UTF8} > ${REL_DIR}/discuz_plugin_webim_SC_GBK.xml
	@@cd ${PRODUCT_DIST_DIR} && zip -r -q  ${REL_FILE} ${REL}
	@@cd ${PRODUCT_DIST_DIR} && rm -rf ${REL}

include common.mk

##@@iconv -f UTF-8 -t GB2312 ${PLUGIN_FILE_UTF8} | iconv -f GB2312 -t BIG5 > ${REL_DIR}/discuz_plugin_webim_TC_BIG5.xml
##@@iconv -f UTF-8 -t GB2312 ${PLUGIN_FILE_UTF8} | iconv -f GB2312 -t BIG5 | iconv -f BIG5 -t UTF-8 > ${REL_DIR}/discuz_plugin_webim_TC_UTF8.xml


