ActiveAdmin.register Post do
  index do
  	column "Title", :title, :sortable => :title do |post|
  		link_to post.title, admin_post_path(post)
  	end
  	column "Created at", :created_at
  	default_actions
  end
end
