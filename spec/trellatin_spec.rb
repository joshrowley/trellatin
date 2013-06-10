require 'spec_helper'

describe Trellatin do

  describe '.configure' do

    before do

      Trellatin.configure do |config|
        config.app_id = 'test_app_id'
        config.token  = 'test_token'
      end

    end

    context Trellatin::Config do

      it 'should set app_id' do
        Trellatin::Config.app_id.should == 'test_app_id'
      end

      it 'should set token' do
        Trellatin::Config.token.should == 'test_token'
      end

    end

  end

end
