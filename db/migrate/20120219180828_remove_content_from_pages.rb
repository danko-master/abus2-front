class RemoveContentFromPages < ActiveRecord::Migration
  def up
    remove_column :pages, :content
  end

  def down
    add_column :pages, :content, :string
  end
end
