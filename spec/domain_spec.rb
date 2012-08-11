require "spec_helper"

describe Crawlbuddy::Domain do
  
  let(:domain) { Crawlbuddy::Domain.new("http://www.google.com") }

  context "disovering domains" do
    
    it "should respond to matches?" do
      domain.should respond_to(:matches?)
    end
    
    it "should match the domain if the domain is an exact match" do
      domain.matches?("http://www.google.com/whatver.html").should be_true
    end
    
    it "should set the host to google.com correctly" do
      Crawlbuddy::Domain.host("google.com/whatver.html").should == "google.com"
    end
    
    it "should match the domain if http://www. is not included" do
      domain.matches?("google.com/whatver.html").should be_true
    end
    
    it "should match regardless of the protocol" do
      Crawlbuddy::Domain.host("https://google.com").should == "google.com"
      domain.matches?("https://google.com").should be_true
    end
    
  end
	

end