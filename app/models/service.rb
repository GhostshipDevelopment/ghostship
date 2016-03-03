class Service < ActiveRecord::Base
  belongs_to :node
  has_many :credentials
  accepts_nested_attributes_for :credentials
end
