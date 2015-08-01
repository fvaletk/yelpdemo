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

FactoryGirl.define do
  factory :review do
    rating 1
comment "MyText"
  end

end
