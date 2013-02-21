class ChaptersController < ApplicationController
  def create
    Chapter.generate
    redirect_to admin_path
  end
end
