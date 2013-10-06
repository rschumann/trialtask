class Image < ActiveRecord::Base

  attr_accessible :gadget_id, :photo

  belongs_to :gadget
  
  has_attached_file :photo,
    :styles =>{
      :thumb  => "120x120>",
      :square => "300x300#",
      :medium => "300x300>",
      :large => "1200x1200>"
    },
    :storage => :s3,
    :s3_credentials => S3_CREDENTIALS,    
    :s3_host_name => 's3-eu-west-1.amazonaws.com',
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename"

end
