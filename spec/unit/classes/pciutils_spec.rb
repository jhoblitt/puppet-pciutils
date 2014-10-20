require 'spec_helper'

describe 'pciutils', :type => :class do

  describe 'for osfamily RedHat' do
    it { should contain_class('pciutils') }
  end

end
