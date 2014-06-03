require 'spec_helper'

describe 'janus' do
  let(:facts){
    {
      :boxen_user => 'test_user'
    }
  }

  it do
    should contain_class('janus')
    should include_class('vim')

    should contain_exec('Install Janus').with({
      :command =>  '/usr/bin/curl -Lo- https://bit.ly/janus-bootstrap | /bin/bash'
    })
    should contain_file("/Users/#{facts[:boxen_user]}/.janus")
      .with_ensure('directory')
  end
end
