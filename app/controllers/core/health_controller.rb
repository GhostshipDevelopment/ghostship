class Core::HealthController < Core::CoreApplicationController
  before_action :verify_authenticated
  def reachable
    render status: 200, nothing: true, content_type: "text/html"
  end
end
