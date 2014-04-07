require 'spec_helper'

describe 'protobuf::package_java' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge(described_recipe)
  end
end
