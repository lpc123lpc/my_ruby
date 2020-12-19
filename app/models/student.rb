class Student < ApplicationRecord
  belongs_to :user
  has_many :borrowtables
  has_many :historyborrowtables

  enum gender: [:男,:女]
  enum department: [:"01",:"02",:"03",:"04",:"05",:"06",:"07",:"08"]
end
