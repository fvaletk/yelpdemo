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

require 'rails_helper'

RSpec.describe Review, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
