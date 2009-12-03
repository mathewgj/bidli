class Item < ActiveRecord::Base
has_attached_file :photo,

	:storage => :s3,
    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
    :path => ":attachment/:id/:style.:extension",
    :bucket => 'uploads.bidli.com'

end
