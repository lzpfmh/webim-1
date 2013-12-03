deps:
	@@if [ ! -d ${PRODUCT_DIR} ]; then \
		echo "${PRODUCT_DIR} Not Found!" \
	else \
		cd ${PRODUCT_DIR} && git checkout master && git pull && cd ${PRODUCT_DIR}/lib && git checkout master && git pull; \
	fi

