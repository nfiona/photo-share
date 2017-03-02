class Photo < ActiveRecord::Base
  belongs_to :album
  has_many :comments, dependent: :destroy
  belongs_to :user, optional: true

  
end
