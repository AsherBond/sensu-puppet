require 'spec_helper'

describe 'sensu' do
  let(:title) { 'sensu::server' }

  context 'without server (default)' do

    it { should contain_service('sensu-server').with(
      :ensure => 'stopped',
      :enable => false
    ) }
  end # without server

  context 'with server' do
    let(:params) { { :server => true } }

    it { should contain_service('sensu-server').with(
      :ensure => 'running',
      :enable => true
    ) }
  end # with server

end

