ui = {{cfg.server.ui}}

storage "consul" {
  {{#if bind.consul-client}}
    {{#if cfg.backend.use-https }}
  scheme = "https"
  address = "{{bind.consul.leader.sys.ip}}:{{bind.consul.leader.cfg.ports.https}}"
    {{ else }}
  scheme = "http"
  address = "{{bind.consul.leader.sys.ip}}:{{bind.consul.leader.cfg.ports.http}}"
    {{/if}}
  {{ else }}
  scheme = "{{cfg.backend.scheme}}"
  address = "{{cfg.backend.address}}"
  {{/if}}

  path = "{{cfg.backend.path}}"
  service = "{{cfg.backend.service-name}}"
  {{#if cfg.backend.token }}
  token = "{{cfg.backend.token}}"
  {{/if}}
}

listener "{{cfg.listener.type}}" {
  address = "{{cfg.listener.location}}:{{cfg.listener.port}}"
  tls_disable = {{cfg.listener.tls_disable}}
}
