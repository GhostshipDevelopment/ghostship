class Service < ActiveRecord::Base
  belongs_to :node
  has_many :credentials
  accepts_nested_attributes_for :credentials
  
  def full_url
    return "#{self.node.address + self.path}"
  end
  
  # verify that the service is reachable with the given credentials
  def reachable?(credential)
    response = http_client.get(self.full_url, headers: self.http_header_credentials(credential))
    if response.status == 200
      return true
    else
      return false
    end
  end

private
  def http_header_credentials(credential)
    creds = {}
    creds[""]
    return creds
  end
end
