class Node < ActiveRecord::Base
  belongs_to :user
  has_many :services
  accepts_nested_attributes_for :services
end
