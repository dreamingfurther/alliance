require 'spec_helper'

describe ChaptersController do

  describe "GET :create" do
    it "should redirect to admin index page" do
      post :create
      response.should redirect_to admin_path
    end

    it "creates a chapter" do
      expect {
        post :create
      }.to change { Chapter.count }.by(1)
    end
  end

end
