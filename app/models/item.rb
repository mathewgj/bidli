class Item < ActiveRecord::Base
has_attached_file :photo,

	:storage => :s3,
    :s3_credentials => "#twapp2/config/s3.yml",
    :path => ":attachment/:id/:style.:extension",
    :bucket => 'twapp2'

end
