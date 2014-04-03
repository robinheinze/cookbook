class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.column :name, :string
      t.column :rating, :integer
      t.column :content, :text
      t.timestamps
    end

    create_table :tags do |t|
      t.column :name, :string

      t.timestamps
    end

    create_table :recipes_tags do |t|
      t.column :recipe_id, :integer
      t.column :tag_id, :integer
      t.timestamps
    end
  end
end
