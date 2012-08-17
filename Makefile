
all:
	test -e 'el-get/el-get' || git clone git://github.com/dimitri/el-get.git el-get/el-get


.PHONY: all
