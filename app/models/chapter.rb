class Chapter < ActiveRecord::Base
  attr_accessible :name

  def self.generate
    chapter = Chapter.new
    chapter.name = "Chapter#{Chapter.count + 1}"
    chapter.save
    chapter
  end
end
