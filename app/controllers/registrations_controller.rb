class RegistrationsController < Devise::RegistrationsController
	protected
		def update_resource(resource, params)  # Override devise' update resource
			resource.update_without_password(params)
		end
end