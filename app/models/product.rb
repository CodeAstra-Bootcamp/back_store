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

class Product < ActiveRecord::Base
  belongs_to :product_category
end
