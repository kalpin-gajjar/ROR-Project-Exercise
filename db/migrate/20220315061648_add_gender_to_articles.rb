class AddGenderToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :gender, :string
  end
end
