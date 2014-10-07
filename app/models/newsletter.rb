class Newsletter < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader # Uploader used for this model

  validates :title, :month, :year, presence: true
end
