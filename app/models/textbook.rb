class Textbook < ApplicationRecord
  enum department: [:"01",:"02",:"03",:"04",:"05",:"06",:"07",:"08"]
  enum term: [:大一上,:大一下,:大二上,:大二下,:大三上,:大三下,:大四上,:大四下]
end
