require File.expand_path('../spec_helper', File.dirname(__FILE__))

describe Webcat::Session do
  context 'with culerity driver' do
    before do
      @session = Webcat::Session.new(:culerity, TestApp)
    end
  
    describe '#driver' do
      it "should be a rack test driver" do
        @session.driver.should be_an_instance_of(Webcat::Driver::Culerity)
      end
    end
    
    describe '#mode' do
      it "should remember the mode" do
        @session.mode.should == :culerity
      end
    end
    
    it_should_behave_like "session"
  end
end