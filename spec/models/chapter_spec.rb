require 'spec_helper'

describe Chapter do
  context ".generate" do
    it "should generate name" do
      Chapter.generate.name.should == 'Chapter1'
    end

    it "should generate a unique and sequential name" do
      Chapter.generate
      Chapter.generate.name.should == 'Chapter2'
    end

    it "saves a new chapter" do
      expect {
        Chapter.generate
      }.to change{ Chapter.count }.by(1)
    end
  end
end
