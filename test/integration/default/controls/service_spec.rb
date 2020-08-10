# frozen_string_literal: true

control 'OpenNTPd service' do
  title 'should be running and enabled'

  describe service('openntpd') do
    it { should be_enabled }
    it { should be_running }
  end

  describe port(123) do
    it { should be_listening }
  end
end
