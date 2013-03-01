require "spec_helper.rb"

module CloseEnoughSpec

  describe "it should call the closest method on Object" do
    before(:each) do
      @obj = Object.new
    end

    it "should return the receiver's class" do
      @obj.closs.should == Object
      @obj.claas.should == Object
    end

    it "should freeze the object" do
      @obj.freze
      @obj.frozne.should == true
    end


  end



end