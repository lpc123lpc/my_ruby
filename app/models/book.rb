class Book < ApplicationRecord
  self.inheritance_column = "not_sti"
  enum category: [:文学,:计算机,:数学,:物理]

  has_attached_file :image, styles: { thumbnail: "50x50#" }
  validates_attachment :image,
                       content_type: { content_type: /\Aimage\/.*\z/ },
                       size: { less_than: 1.megabyte }



  def self.search(search)
    if search
      where(["title LIKE ?","%#{search}%"])
    else
      all
    end
  end


end
