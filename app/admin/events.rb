ActiveAdmin.register Event do

	index do
    column :date
    column :created_at
    default_actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Event Details" do      
      f.input :activity, :as => :radio, :collection => Activity.all
      f.input :date
    end
    f.buttons
  end
end
