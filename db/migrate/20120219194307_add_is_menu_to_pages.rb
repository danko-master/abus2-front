class AddIsMenuToPages < ActiveRecord::Migration
  def change
    add_column :pages, :ismenu, :boolean, :null => false, :default => false
  end
end
