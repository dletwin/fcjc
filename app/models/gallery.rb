class Gallery < ActiveRecord::Base
  has_many :images

  validates :name, :month, :day, :year, presence: true #Make sure values are present before add to DB
end
