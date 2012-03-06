class RemoveTitleFromPages < ActiveRecord::Migration
  def up
    remove_column :pages, :title
    remove_column :pages, :metadescription
    remove_column :pages, :metakeywords
    remove_column :pages, :head
  end

  def down
    add_column :pages, :head, :string
    add_column :pages, :metakeywords, :string
    add_column :pages, :metadescription, :string
    add_column :pages, :title, :string
  end
end
