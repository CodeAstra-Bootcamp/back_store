# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  product_category_id :integer
#  name                :string
#  price               :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
