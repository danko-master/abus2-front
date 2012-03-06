class AddContentTitleToPages < ActiveRecord::Migration
  def change
    add_column :pages, :title, :text
    add_column :pages, :content, :text
    add_column :pages, :metadescription, :text
    add_column :pages, :metakeywords, :text
    add_column :pages, :head, :text
  end
end
