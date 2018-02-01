class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :user, foreign_key: true
      t.references :link, foreign_key: true
      t.references :commentable, polymorphic: true, index: true
      
      t.timestamps
    end
  end
end
