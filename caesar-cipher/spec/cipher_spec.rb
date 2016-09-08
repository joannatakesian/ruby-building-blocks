require_relative '../cipher'

describe Cipher do
    it "should shift a letter by the key" do
        Cipher.new.encrypt('a', 1).should eq('b')
    end
    
    it "should wrap z to a" do
        Cipher.new.encrypt('z', 1).should eq('a')
    end
    
    it "should shift a whole word" do
        Cipher.new.encrypt('word', 1).should eq('xpse')
    end
    
    it "should allow a large key" do
        Cipher.new.encrypt('word', 25).should eq('vnqc')
    end
    
    it "should downcase an uppercase word" do
        Cipher.new.encrypt('WORD', 1).should eq ('xpse')
    end
end