class Gadget < ActiveRecord::Base

  attr_accessible :images_attributes, :name, :content
  attr_accessible :user_id

  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images, :reject_if => :all_blank, :allow_destroy => true

  validates :name, presence: true, length: { minimum: 6  }
  validates :content, presence: true, length: { minimum: 12  }
  
  belongs_to :user

end
