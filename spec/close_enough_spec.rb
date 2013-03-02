require "spec_helper.rb"

module CloseEnoughSpec

  describe "nearest_method should find the nearest method to the typo" do
    before(:each) do
      @obj = Object.new
    end

    it "should return 'freeze' for 'frese'" do
      @obj.send(:nearest_method, 'frese').should == "freeze"
    end
  end

  describe "method_missing should call the closest method on Object" do
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

  describe "it should call the closest method, out of all methods < 3 away" do

    it "should find to_sym when to_sim is called (instead of to_str)" do
      'contrived'.to_sim.should == :contrived
    end
  end

  describe "the called method should be able to take a block" do
    it "should yield the results of applying the block" do
      [1,2,3,4].correct do |a|
        a += 1
      end.should == [2,3,4,5]
    end
  end

  describe "warnings should be issued when the correct method is guessed" do
    it "should warn when guessing 'reverse' for 'reserve'" do
      str = "avocado"
      str.should_receive(:warn).with("[CloseEnough] reserve not found, using reverse instead")
      str.reserve
    end
  end

end
