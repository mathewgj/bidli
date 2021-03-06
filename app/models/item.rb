class Item < ActiveRecord::Base
has_attached_file :photo,
	:styles => {
		:thumb=> "50x50#",},
	
	:storage => :s3,
    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
    :path => ":attachment/:id/:style.:extension",
    :bucket => 'uploads.bidli.com'
    
validates_attachment_size :photo, :less_than => 2.megabytes

end
