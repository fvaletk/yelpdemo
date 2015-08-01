# == Schema Information
#
# Table name: restaurants
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :string
#  phone      :string
#  website    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Restaurant < ActiveRecord::Base

  # Validations
  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :website, presence: true

  # Uploader
  mount_uploader :image, ImageUploader

  # Associations
  has_many :reviews
end
