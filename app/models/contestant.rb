class Contestant < ActiveRecord::Base
  belongs_to :show
  has_many :groupies
  validates_presence_of :name
  validates_presence_of :show_id
end
