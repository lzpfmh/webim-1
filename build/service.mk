build_service: ${PREFIX}/service/static/webim.service.js build_service_customer build_service_visitor

${PREFIX}/service/static/webim.service.js: ${PREFIX}/service ${UI_DIST_DIR}/service
	@@echo "Copy static"
	@@cp -r ${UI_DIST_DIR}/service ${PREFIX}/service/static
	@@echo "	"${PREFIX}/service/static

${UI_DIST_DIR}/service: ${UI_DIR} 
	@@echo "Build static..."
	$(MAKE) service -C ${UI_DIR}

${PREFIX}/service:
	@@git submodule update --init service

clean_service: clean_service_customer clean_service_visitor
	$(MAKE) clean_service -C ${UI_DIR}
	@@echo "Removing Distribution directory:" ${PREFIX}/service/static
	@@rm -rf ${PREFIX}/service/static

