user = User.create!(email: "user@example.com", password: "password", password_confirmation: "password")

node = user.nodes.create!(address: "localhost:3000")
service = node.services.create!(name: "Keep Alive Service", path: "/core/keepalive")
credentials = service.credentials.create!(public_key: "test public", private_key: "test private", identifier: "test identifier")
