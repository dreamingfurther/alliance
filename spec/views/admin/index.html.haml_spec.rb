require 'spec_helper'

describe "admin/index.html.haml" do
  it "should have add chapter button" do
    render
    rendered.should include('Add Chapter')
  end

  it "should display all chapters" do
    Chapter.generate
    render
    rendered.should include('Chapter1')
  end
end
