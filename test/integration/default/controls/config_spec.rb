# frozen_string_literal: true

control 'OpenNTPd configuration' do
  title 'should match desired lines'

  config_file =
    case platform[:family]
    when 'debian'
      '/etc/openntpd/ntpd.conf'
    else
      '/etc/ntpd.conf'
    end

  describe file(config_file) do
    its('content') { should include 'listen on *' }
    its('content') { should include 'server 0.debian.pool.ntp.org' }
    its('content') { should include 'server 1.debian.pool.ntp.org' }
    its('content') { should include 'server 2.debian.pool.ntp.org' }
    its('content') { should include 'server 3.debian.pool.ntp.org' }
  end
end
