build_air: ${PREFIX}/air/static

${PREFIX}/air/static: ${PREFIX}/air ${UI_DIST_DIR}/air
	@@echo "Copy static"
	@@cp -r ${UI_DIST_DIR}/air ${PREFIX}/air/static
	@@rm -r ${PREFIX}/air/static/themes/*
	@@cp -r ${UI_DIST_DIR}/air/themes/base ${PREFIX}/air/static/themes/base
	@@echo "	"${PREFIX}/air/static

${UI_DIST_DIR}/air: ${UI_DIR} 
	@@echo "Build static..."
	$(MAKE) air -C ${UI_DIR}

${PREFIX}/air:
	@@git submodule update --init air

clean_air:
	$(MAKE) clean_air -C ${UI_DIR}
	@@echo "Removing Distribution directory:" ${PREFIX}/air/static
	@@rm -rf ${PREFIX}/air/static

