require 'spec_helper'
describe 'filecopy' do
  context 'with default values for all parameters' do
    it { should contain_class('filecopy') }
  end
end
