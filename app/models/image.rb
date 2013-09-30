class Image < ActiveRecord::Base

  attr_accessible :gadget_id, :photo

  belongs_to :gadget
  
  has_attached_file :photo,
    :styles =>{
      :thumb  => "120x120>",
      :medium => "300x300>",
      :large => "600x600>"
    },
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",    
    :s3_host_name => 's3-eu-west-1.amazonaws.com',
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename"

end
