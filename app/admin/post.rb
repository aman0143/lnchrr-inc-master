ActiveAdmin.register Post do
  permit_params :project_name, :quick_pitch, :full_pitch, :youtube_id, :to_the_table, :compensation_method, :location, :tags

def to_param
  "#{id} #{title}".parameterize
end

batch_action :approve do |selection|
  Post.find(selection).each do |post|
    post.is_approved = true
    post.save
  end

end

batch_action :unapprove do |selection|
  Post.find(selection).each do |post|
    post.is_approved = false
    post.save
  end

end
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
