module ApplicationHelper
	def flashes_helper
		results = []
		falshes = [:notice, :error, :alert, :success, :info]

		falshes.each do |name, msg|
			hidden = "hide" if flash[name].blank?
			results << content_tag(:div, content_tag(:p, flash[name]), class: "alert alert-#{name} #{hidden}").html_safe
		end
		results.join("").html_safe
	end
end
