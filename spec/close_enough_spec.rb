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

    it "should raise NoMethodError if the edit distance is >= 3" do
      expect {@obj.sjdhs}.to raise_error(NoMethodError)
    end
  end

  describe "it should call the closest method on String" do
    
    it "should return the length when lentgh is called" do
      "wibble".lentgh.should == 6
    end

    it "should reverse a string" do
      "parsnip".reserve.should == "pinsrap"
    end
  end



end