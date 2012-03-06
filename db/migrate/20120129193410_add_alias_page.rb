class AddAliasPage < ActiveRecord::Migration
  def up
    add_column :pages, :alias, :string
    add_index :pages, :alias, :unique => true
  end

  def down
    remove_column :pages, :alias, :string
    remove_index :pages, :alias
  end
end
