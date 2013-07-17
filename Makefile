PREFIX = .
UI_DIR = ${PREFIX}/ui
UI_DIST_DIR = ${UI_DIR}/dist

all: build_uchome build_discuzX build_discuz build_phpwind build_service

clean: clean_uchome clean_discuzX clean_discuz clean_phpwind clean_service

${UI_DIR}:
	@@git submodule update --init ui

include build/uchome.mk
include build/discuzX.mk
include build/discuz.mk
include build/phpwind.mk
include build/air.mk
include build/service.customer.mk
include build/service.visitor.mk
include build/service.mk
