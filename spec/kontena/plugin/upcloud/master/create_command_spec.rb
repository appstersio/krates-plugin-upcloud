require 'spec_helper'
require 'kontena/plugin/upcloud_command'

describe Kontena::Plugin::Upcloud::Master::CreateCommand do

  let(:subject) do
    described_class.new(File.basename($0))
  end

  let(:provisioner) do
    spy(:provisioner)
  end

  describe '#run' do
    it 'raises usage error if no options are defined' do
      expect {
        subject.run([])
      }.to raise_error(Clamp::UsageError)
    end

  end
end