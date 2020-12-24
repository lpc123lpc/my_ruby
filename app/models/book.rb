class Book < ApplicationRecord
  self.inheritance_column = "not_sti"
  enum category: [:文学,:计算机,:数学,:物理]



  def self.search(search)
    if search
      where(["title LIKE ?","%#{search}%"])
    else
      all
    end
  end


end
