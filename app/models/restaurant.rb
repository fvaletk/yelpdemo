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
#  image      :string
#

class Restaurant < ActiveRecord::Base

  # Validations
  validates :name, presence: true
  validates :address, presence: true, format: { with: /\A\d+[^,]+,[^,]+, [A-Z]{2} \d{5}\z/, message: "must be in format 350 Fifth Avenue, New York, NY 10118" }
  validates :phone, presence: true, format: { with: /\A\(\d{3}\) \d{3}-\d{4}\z/, message: "must be in the format (123) 456-7890" }
  validates :website, presence: true, format: { with: /\Ahttps?:\/\/.*\z/, message: "must start with http:// or https://" }
  validates :image, presence: true

  # Uploader
  mount_uploader :image, ImageUploader

  # Associations
  has_many :reviews
end
