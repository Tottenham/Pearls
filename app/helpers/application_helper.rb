module ApplicationHelper

	def is_logged_in?
		if session[:user_id]
			return true
		else
			redirect_to "/"
		end
	end

	def find_asset(id)
		asset = Asset.find(:last, :conditions => {:girl_id => id, :classification => "Main"})
		return asset
	end		

	def asset_object(id)
		asset = find_asset(id)
		return asset unless asset.blank?
	end

	def asset_object_id(id)
		asset = find_asset(id)
		return asset.id unless asset.blank?
	end

	def asset_object_name(id)
		asset = find_asset(id)
		return asset.image_file_name unless asset.blank?
	end

	def true_to_yes(boolean)
		if boolean == true
			return "Yes"
		else
			return ""
		end
	end

	def current_user
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

end
