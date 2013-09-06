.PHONY: test dependencies

jquery_version = 2.0.3
qunit_version = 1.12.0

download = \
	curl --output $(1) --time-cond $(1) --remote-time $(2)

dependencies:
	mkdir -p extlib
	$(call download, "extlib/jquery.js", \
		"http://ajax.googleapis.com/ajax/libs/jquery/$(jquery_version)/jquery.js")
	mkdir -p test/extlib
	$(call download, "test/extlib/qunit.js", \
		"http://code.jquery.com/qunit/qunit-$(qunit_version).js")
	$(call download, "test/extlib/qunit.css", \
		"http://code.jquery.com/qunit/qunit-$(qunit_version).css")
	$(call download, "test/extlib/phantomjs-qunit-runner.js", \
		"https://raw.github.com/jquery/qunit/master/addons/phantomjs/runner.js")