ActiveAdmin.register Activity do
  
  index do
    
    column :title
    
    column :location
    column :created_at
    default_actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Activity Details" do
      f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image_url(:thumb))
      f.input :title
      f.input :location
    end
    f.buttons
  end

end
