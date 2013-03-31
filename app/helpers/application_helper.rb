module ApplicationHelper

	def is_logged_in?
		return true if session[:user]
		false
	end

	def main_image(id)
		asset = Asset.find(:last, :conditions => {:girl_id => id, :classification => "main"})
		return "https://s3-eu-west-1.amazonaws.com/pearlsgirlsimages/Users/tobybenedyk/Desktop/Work/pearls/public/assets/images/37/original/pearls-girls-girl.png" unless asset.blank?
	end

	def image_path(asset)
		return "https://s3-eu-west-1.amazonaws.com/pearlsgirlsimages/Users/tobybenedyk/Desktop/Work/pearls/public/assets/images/37/original/pearls-girls-girl.png" unless asset.blank?
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
