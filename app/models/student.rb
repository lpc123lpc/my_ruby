class Student < ApplicationRecord
  enum gender: [:男,:女]
  enum department: [:"01",:"02",:"03",:"04",:"05",:"06",:"07",:"08"]
end
