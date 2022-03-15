class AddEndDateToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :end_date, :date
  end
end
