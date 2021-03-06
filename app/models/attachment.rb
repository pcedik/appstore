class Attachment < ActiveRecord::Base
	belongs_to :version, :inverse_of => :attachments
	has_attached_file :file, dependent: :destroy
	do_not_validate_attachment_file_type :file
end
