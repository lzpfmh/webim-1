build_service_visitor: ${PREFIX}/service/static/webim.service.visitor.css

${PREFIX}/service/static/webim.service.visitor.css: ${UI_DIST_DIR}/service_visitor
	@@echo "Copy static"
	@@cp -r ${UI_DIST_DIR}/service.visitor/ ${PREFIX}/service/static
	@@echo "	"${PREFIX}/service/static

${UI_DIST_DIR}/service_visitor: ${UI_DIR} 
	@@echo "Build static..."
	$(MAKE) service_visitor -C ${UI_DIR}

clean_service_visitor:
	$(MAKE) clean_service_visitor -C ${UI_DIR}
	@@echo "Removing Distribution directory:" ${PREFIX}/service/static
	@@rm -rf ${PREFIX}/service/static

