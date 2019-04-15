class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :post, index: true
      t.string :message

      t.timestamps
    end

    add_foreign_key :comments, :posts
  end
end
