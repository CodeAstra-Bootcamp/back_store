# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  phone      :string
#  address    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  city       :string
#  pincode    :string
#

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
