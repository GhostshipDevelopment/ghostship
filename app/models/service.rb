class Service < ActiveRecord::Base
  belongs_to :node
  has_many :credentials
  accepts_nested_attributes_for :credentials
  
  def full_url
    return "#{self.node.address + self.path}"
  end
end
