require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/
describe 'janus' do
  let(':facts') do
    {
      :luser => 'test_user'
    }
  end

  it do
    should contain_class('janus')
    should include_class('macvim')

    should contain_exec('Install Janus').with({
      :command =>  '/usr/bin/curl -Lo- https://bit.ly/janus-bootstrap | /bin/bash'
    })
    should contain_file("/Users/test_user/.janus")
  end
end
