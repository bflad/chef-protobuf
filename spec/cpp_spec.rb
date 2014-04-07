require 'spec_helper'

describe 'protobuf::cpp' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge(described_recipe)
  end
end
