class Show < ActiveRecord::Base
  has_many :contestants
  has_many :groupies, through: :contestants
  validates_presence_of :title
  validates_uniqueness_of :title
  validates_presence_of :season

end
