class CreateMains < ActiveRecord::Migration
  def change
    create_table :mains do |t|
      t.text :title
      t.text :content
      t.text :metadescription
      t.text :metakeywords
      t.text :head
      t.text :contact
      t.text :footer
      t.text :counter

      t.timestamps
    end
    

    
  end
end
