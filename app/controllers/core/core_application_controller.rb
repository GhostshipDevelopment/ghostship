class Core::CoreApplicationController < ActionController::Base
  
private
  def verify_authenticated
    public_key = request.headers.fetch("GHOSTSHIPPUBLICKEY", nil)
    identifier = request.headers.fetch("GHOSTSHIPIDENTIFIER", nil)
    if public_key.nil? || identifier.nil?
      render status: :unauthorized, nothing: true, content_type: "text/html"
      return
    end
    cred = Credential.find_by_identifier(identifier)
    if !cred.nil? && !Devise.secure_compare(cred.public_key, public_key)
      render status: :unauthorized, nothing: true, content_type: "text/html"
      return
    end
  end
end
