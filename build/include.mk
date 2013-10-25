all: ${STATIC_DIR}

${STATIC_DIR}: ${PRODUCT_DIR} ${DIST_DIR}
	@@echo "Copy static"
	@@cp -r ${DIST_DIR} ${STATIC_DIR}
	@@echo "	"${STATIC_DIR}

${DIST_DIR}: ${UI_DIR} 
	@@echo "Build static..."
	$(MAKE) -C ${UI_DIR} -f ./build/${PRODUCT_NAME}.mk

${PRODUCT_DIR}:
	@@git submodule update --init ${MODULE_NAME}

clean:
	$(MAKE) clean -C ${UI_DIR} -f ./build/${PRODUCT_NAME}.mk
	@@echo "Removing Distribution directory:" ${STATIC_DIR}
	@@rm -rf ${STATIC_DIR}

