class Manager < ApplicationRecord
  belongs_to :user

  enum gender: [:男,:女]
end
