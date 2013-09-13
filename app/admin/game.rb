ActiveAdmin.register Game do
  index :download_links => false do
    column :name
    column :year_published
    column :minimum_players
    column :maximum_players
    default_actions
  end

  filter :name
  filter :year_published
  filter :minimum_players
  filter :maximum_players
end
