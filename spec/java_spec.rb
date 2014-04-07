require 'spec_helper'

describe 'protobuf::java' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge(described_recipe)
  end
end
