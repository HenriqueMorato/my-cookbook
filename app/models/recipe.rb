# == Schema Information
#
# Table name: recipes
#
#  id             :integer          not null, primary key
#  title          :string
#  difficulty     :string
#  cook_time      :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  ingredients    :text
#  method         :text
#  cuisine_id     :integer
#  recipe_type_id :integer
#

class Recipe < ApplicationRecord
  validates :title, presence: true
  validates :recipe_type, presence: true
  validates :cuisine_id, presence: true
  validates :difficulty, presence: true
  validates :cook_time, presence: true
  validates :ingredients, presence: true
  validates :method, presence: true
  belongs_to :cuisine
  belongs_to :recipe_type
end
