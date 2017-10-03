# == Schema Information
#
# Table name: recipe_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RecipeType < ApplicationRecord
  has_many :recipes
end
