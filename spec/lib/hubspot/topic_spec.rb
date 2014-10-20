require 'spec_helper'

describe Hubspot::Topic do
  before do
    Hubspot.configure(hapikey: "demo")
  end

  describe ".list" do
    cassette "topics_list"
    let(:topics) { Hubspot::Topic.list }

    it "should have a list of topics" do
      topics.count.should be(3)
    end
  end
end

