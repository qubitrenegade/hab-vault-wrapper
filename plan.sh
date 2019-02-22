pkg_origin=qbrd
pkg_name=vault-wrapper
pkg_version=1.0.2
pkg_description="A tool for managing secrets."
pkg_maintainer='QubitRenegade qbrd@qubitrenegade.com'
pkg_license=("MPL-2.0")
pkg_upstream_url=https://www.vaultproject.io/
pkg_deps=(core/vault)
pkg_svc_user=hab
pkg_svc_group=hab
pkg_exports=(
  [port]=listener.port
)
pkg_exposes=(port)

pkg_binds_optional=(
  [consul]="port-http"
)

do_unpack() {
  return 0
}

do_build() {
  return 0
}

do_install() {
  return 0
}
