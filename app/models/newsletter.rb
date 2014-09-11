class Newsletter < ActiveRecord::Base
  validates :title, presence: true
  validates :month, presence: true
  validates :year, presence: true, length: { is: 4 }
end
