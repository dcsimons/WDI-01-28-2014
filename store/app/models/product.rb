# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  price      :float
#  created_at :datetime
#  updated_at :datetime
#

class Product < ActiveRecord::Base
	has_many :combos
	has_many :categories, through: :combos
end
