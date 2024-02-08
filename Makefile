.PHONY: rpm-build

build: rpm-build

rpm-build:
	docker run --rm --volume=`pwd`:/src --workdir=/src --env SNAPSHOT=true --env QA_RPATHS=0x0002 --env SPEC_FILE=openldap.spec yoannguion/rpmbuilder:el9