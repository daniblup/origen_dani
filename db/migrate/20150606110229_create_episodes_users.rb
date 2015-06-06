class CreateEpisodesUsers < ActiveRecord::Migration
  def change
    create_table :episodes_users do |t|
      t.references :user, index: true
      t.references :episode, index: true
    end
  end
end
