class RemoveAllFromPages < ActiveRecord::Migration
  def up
    remove_column :pages, :name
    remove_column :pages, :alias
    remove_column :pages, :title
    remove_column :pages, :content
    remove_column :pages, :metadescription
    remove_column :pages, :metakeywords
    remove_column :pages, :head
  end

  def down
    add_column :pages, :head, :text
    add_column :pages, :metakeywords, :text
    add_column :pages, :metadescription, :text
    add_column :pages, :content, :text
    add_column :pages, :title, :text
    add_column :pages, :alias, :string
    add_column :pages, :name, :string
  end
end
