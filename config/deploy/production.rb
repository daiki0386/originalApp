server '18.182.220.91', user: 'ec2-user', roles: %w{app db web}

set :ssh_options, {
  port: 22,
  forward_agent: true,
  keys: ['~/.ssh/id_rsa']
}
