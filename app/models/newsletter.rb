class Newsletter < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader # Uploader used for this model
  validates :title, presence: true # Make sure title of document is present
  validates :month, presence: true # Make sure month for document is present
  validates :year, presence: true, length: { is: 4 } # Make sure year is present and is 4 integers long
end
