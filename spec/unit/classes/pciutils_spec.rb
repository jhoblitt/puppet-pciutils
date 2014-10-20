require 'spec_helper'

describe 'pciutils', :type => :class do

  context 'on osfamily RedHat' do
    let(:facts) {{ :osfamily => 'RedHat' }}

    context 'default params' do
      it { should contain_class('pciutils').with( :ensure => 'present') }
    end

    context 'ensure =>' do
      context 'present' do
        let(:params) {{ :ensure => 'present' }}

        it { should contain_class('pciutils').with( :ensure => 'present') }
      end

      context 'latest' do
        let(:params) {{ :ensure => 'latest' }}

        it { should contain_class('pciutils').with( :ensure => 'latest') }
      end

      context 'absent' do
        let(:params) {{ :ensure => 'absent' }}

        it { should contain_class('pciutils').with( :ensure => 'absent') }
      end
    end # ensure =>
  end # on osfamily RedHat

  describe 'unsupported osfamily' do
    let :facts do
      {
        :osfamily        => 'AIX',
        :operatingsystem => 'AIX',
      }
    end

    it 'should fail' do
      expect { should }.to raise_error(Puppet::Error, /pciutils is not supported on AIX/)
    end
  end # unsupported osfmaily

end
