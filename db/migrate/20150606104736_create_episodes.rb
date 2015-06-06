class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.int :number
      t.int :season
      t.text :synopsis
      t.references :serie, index: true

      t.timestamps
    end
  end
end
