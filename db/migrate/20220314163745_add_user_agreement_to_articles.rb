class AddUserAgreementToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :user_agreement, :boolean
  end
end
