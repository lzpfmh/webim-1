build_service_customer: ${PREFIX}/service/static/webim.service.customer.css

${PREFIX}/service/static/webim.service.customer.css: ${UI_DIST_DIR}/service_customer
	@@echo "Copy static"
	@@cp -r ${UI_DIST_DIR}/service.customer/ ${PREFIX}/service/static
	@@echo "	"${PREFIX}/service/static

${UI_DIST_DIR}/service_customer: ${UI_DIR} 
	@@echo "Build static..."
	$(MAKE) service_customer -C ${UI_DIR}

clean_service_customer:
	$(MAKE) clean_service_customer -C ${UI_DIR}
	@@echo "Removing Distribution directory:" ${PREFIX}/service/static
	@@rm -rf ${PREFIX}/service/static

