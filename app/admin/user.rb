ActiveAdmin.register User do
  actions :all, :except => [:new, :edit]

  index :download_links => false do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end

  filter :email
end
