class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :title
      t.string :metadescription
      t.string :metakeywords
      t.string :head
      t.string :content

      t.timestamps
    end
  end
end
