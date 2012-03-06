class AddAllToPages < ActiveRecord::Migration
  def change
    add_column :pages, :name, :string, :null => false, :default => 'New Page'
    add_column :pages, :alias, :string, :default => ''
    add_column :pages, :title, :text, :default => ''
    add_column :pages, :content, :text, :default => ''
    add_column :pages, :metadescription, :text, :default => ''
    add_column :pages, :metakeywords, :text, :default => ''
    add_column :pages, :head, :text, :default => ''
  end
end
