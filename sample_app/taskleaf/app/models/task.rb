class Task < ApplicationRecord
 validates :name, presence: true, length: { maximum: 50 }
# validates :name, presence: true
# validates :name, length: { maximum: 50 }
end
