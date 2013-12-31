class Groupy < ActiveRecord::Base
  belongs_to :contestant
  validates_presence_of :name
end
