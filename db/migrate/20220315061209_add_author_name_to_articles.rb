class AddAuthorNameToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :author_name, :text
  end
end
