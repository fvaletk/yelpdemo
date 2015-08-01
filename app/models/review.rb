# == Schema Information
#
# Table name: reviews
#
#  id            :integer          not null, primary key
#  rating        :integer
#  comment       :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#  restaurant_id :integer
#

class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  # Validations
  validates :rating, presence: true
  validates :rating, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 5,
    message:"can only be a whole number between 1 and 5"
  }
  validates :comment, presence: true

end
