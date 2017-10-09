ActiveAdmin.register User do
  permit_params :sex, :first_name, :second_name, :email, :age, :phone_number, :time, :adress, :city_index, :city_name

  index do
    selectable_column
    id_column
    column :first_name
    column :second_name
    column :sex
    column :email
    column :age
    column :phone_number
    column :time
    column :adress
    column :city_index
    column :city_name
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :first_name
  filter :second_name
  filter :sex
  filter :email
  filter :age
  filter :phone_number
  filter :time
  filter :adress
  filter :city_index
  filter :city_name
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  filter :sign_in_count
  filter :created_at
  
  form do |f|
    f.inputs do
      f.input :email
      f.input :first_name
    end
    f.actions
  end

end
