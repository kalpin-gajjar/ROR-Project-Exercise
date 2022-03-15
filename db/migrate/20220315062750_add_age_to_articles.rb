class AddAgeToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :age, :integer
  end
end
