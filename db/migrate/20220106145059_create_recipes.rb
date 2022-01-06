class CreateRecipes < ActiveRecord::Migration[6.1]
  def change

    create_table :recipes do |t|

      t.string :recipe_name
      t.string :image_url
      t.text :ingredient
      t.text :direction

      t.integer :user_id

    end

  end
end
