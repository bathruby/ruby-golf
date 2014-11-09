require File.dirname(__FILE__) + "/spec_helper"

describe "Golf" do
  describe ".hole1" do
    it "should convert camel case strings to underscored style" do
      Golf.hole1("camelCase").should == "camel_case"
      Golf.hole1("AbstractBeanConverterVistorFactoryService").should == "abstract_bean_converter_vistor_factory_service"
    end

    it "should do nothing to an empty string" do
      Golf.hole1("").should == ""
    end
  end

  describe ".hole2" do
    it "should find all numeric palindromes for a range from 0 to 20" do
      Golf.hole2([0, 20]).should == [0,1,2,3,4,5,6,7,8,9,11]
    end
    it "should find all numeric palindromes for a range from 100 to 200" do
      Golf.hole2([100, 200]).should == [101,111,121,131,141,151,161,171,181,191]
    end
    it "should find all numeric palindromes for a range from 1990 to 1992" do
      Golf.hole2([1990, 1992]).should == [1991]
    end
  end

  describe ".hole3" do
    it "should encrypt the string by performing a shift cipher" do
      Golf.hole3("hello",3).should == "khoor"
    end

    it "should handle negative numbers" do
      Golf.hole3("world",-2).should == "umpjb"
    end
  end

  describe ".hole4" do
    it "should count number of times the substring occurs in that string" do
      Golf.hole4("Banana","a").should == 3
    end

    it "should be case insenstive" do
      Golf.hole4("The quick brown fox jumps over the lazy dog","the").should == 2
    end
  end

  describe ".hole5" do
    it "should sum all primes within a given range" do
      Golf.hole5(1,100).should == 1060
      Golf.hole5(5,5000).should == 1548126
    end
  end

  describe ".hole6" do
    it "should play fizzbuzz to 3, where multiples of 3 are 'fizz'" do
      Golf.hole6(3).should eql [1,2,"fizz"]
    end

    it "should play fizzbuzz to 5, with rules above and multiples of 5 are 'buzz'" do
      Golf.hole6(5).should eql [1,2,"fizz",4,"buzz"]
    end

    it "should play fizzbuzz to 10 with rules above and muliples of 3 and 5 are 'fizzbuzz'" do
      Golf.hole6(15).should eql [1,2,"fizz",4,"buzz","fizz",7,8,"fizz","buzz",11,"fizz",13,14,"fizzbuzz"]
    end

    it "should play fizzbuzz to 30" do
      Golf.hole6(30).should eql [1,2,"fizz",4,"buzz","fizz",7,8,"fizz","buzz",11,"fizz",13,14,"fizzbuzz",16,17,"fizz",19,"buzz","fizz",22,23,"fizz","buzz",26,"fizz",28,29,"fizzbuzz"]
    end
  end

  describe ".hole7" do
    it "should symbolize keys in a hash" do
      Golf.hole7({"foo" => "bar"}).should == {:foo => "bar"}
    end

    it "should not symbolize numbers" do
      Golf.hole7({1 => "direction"}).should == {1 => "direction"}
    end

    it "should handle nested hashes" do
      Golf.hole7({"foo" => {"bar" => "baz"}, :bang => {}}).should == {:foo => {:bar => "baz"}, :bang => {}}
    end
  end

  describe ".hole8" do
    it "should give the first N numbers of the fibonacci sequence" do
      Golf.hole8(5).should eql [1,1,2,3,5]
    end

    it "should give the first 9 numbers" do
      Golf.hole8(9).should eql [1,1,2,3,5,8,13,21,34]
    end

    it "should give the first 15 numbers" do
      Golf.hole8(15).should eql [1,1,2,3,5,8,13,21,34,55,89,144,233,377,610]
    end
  end

  describe ".hole9" do
    it "should collapse consecutive numbers to a range" do
      Golf.hole9([1,2,3]).should eql ["1-3"]
    end

    it "should keep separate ranges distinct" do
      Golf.hole9([1,2,3,5,6,7,100,101]).should eql ["1-3","5-7","100-101"]
    end

    it "should show isolated digits on their own" do
      Golf.hole9([1,2,3,5,10,11,12]).should eql ["1-3","5","10-12"]
    end
  end
end
