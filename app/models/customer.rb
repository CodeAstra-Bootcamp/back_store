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

class Customer < ActiveRecord::Base
end
