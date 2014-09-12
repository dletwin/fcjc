class Newsletter < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader # Uploader used for this model

  validates :title, :month, :year, presence: true
  validates :year, length: { is: 4 } # Make sure year is present and is 4 integers long
end
