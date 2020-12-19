class Journal < ApplicationRecord
  enum journaltype: [:文学,:计算机,:艺术,:时尚]
end
