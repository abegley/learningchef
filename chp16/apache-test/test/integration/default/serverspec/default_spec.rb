require 'spec_helper'

describe 'web site' do
  it 'responds on port 80' do
    expect(port 80).to be_listening 'tcp'
  end
end

describe command('curl localhost:80') do
  its(:stdout) { should match /eth1/ }
end
