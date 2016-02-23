class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :title
      t.text :article
      t.string :author
      t.integer :rating

      t.timestamps
    end
  end
end
