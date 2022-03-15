class AddEmailToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :email, :text
  end
end
