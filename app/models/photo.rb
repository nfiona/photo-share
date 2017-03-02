class Photo < ActiveRecord::Base
  belongs_to :album
  has_many :comments, dependent: :destroy
  belongs_to :user, optional: true

  def self.search(search)
    where("description ILIKE ? OR settings ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
