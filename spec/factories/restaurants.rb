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

FactoryGirl.define do
  factory :restaurant do
    name Faker::Name.name
    address Faker::Address.street_address
    phone Faker::PhoneNumber.phone_number
    website Faker::Internet.url
  end

end
