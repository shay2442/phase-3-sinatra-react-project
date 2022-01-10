class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :from
      t.string :category
      t.string :notes
      t.integer :user_id
    end
  end
end
