class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
  dockeragent::node {'minetest.puppet.vm':}
  host { 'db.puppet.vm':
    ensure => 'present',
    ip => '172.18.0.3',
  }
  host { 'web.puppet.vm':
    ensure => 'present',
    ip => '172.18.0.2',
  }
  host { 'minecraft.puppet.vm':
    ensure => 'present',
    ip => '172.18.0.4',
  }
}
