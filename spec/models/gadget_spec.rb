require 'spec_helper'

describe Gadget do

  let(:user) { FactoryGirl.create(:user) }

  describe "creation" do

    context "valid attributes" do

      it "should be valid" do
        gadget = Gadget.new(name: "My first gadget", content: "Hello, behavior-driven development world!")

        gadget.should be_valid
      end

    end

    context "invalid attributes" do

      it "should not be valid" do
        gadget = Gadget.new(name: "My first gadget", content: "")

        gadget.should_not be_valid
      end

    end

  end
  
end