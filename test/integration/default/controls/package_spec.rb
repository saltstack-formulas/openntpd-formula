# frozen_string_literal: true

control 'OpenNTPd package' do
  title 'should be installed'

  describe package('openntpd') do
    it { should be_installed }
  end
end
