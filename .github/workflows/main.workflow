workflow "Build Repo RPM" {
  on = "push"
  resolves = ["Build RPM"]
}

action "Build RPM" {
  uses = "yoannguion/docker-mock-rpmbuilder@master"
  env = {
    SPEC_FILE = "openldap.spec"
    MOCK_CONFIG = "epel-8-x86_64"
  }
}