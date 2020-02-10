class CreateSFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :s_favorites do |t|
      t.references :user, foreign_key: true
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end
