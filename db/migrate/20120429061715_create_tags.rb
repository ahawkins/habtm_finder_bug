class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name

      t.timestamps
    end

    create_table :posts_tags do |t|
      t.references :post
      t.references :tag
    end
  end
end
