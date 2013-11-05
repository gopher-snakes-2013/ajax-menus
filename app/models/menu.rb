class Menu < ActiveRecord::Base
  attr_accessible :meal
  has_many :items
  validates_presence_of :meal, dependent: :destroy
end