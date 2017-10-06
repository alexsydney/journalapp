class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :contents
      t.references :user, foreign_key: true
    end
  end
end
