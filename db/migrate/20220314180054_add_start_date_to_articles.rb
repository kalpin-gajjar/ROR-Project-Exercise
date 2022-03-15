class AddStartDateToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :start_date, :date
  end
end
