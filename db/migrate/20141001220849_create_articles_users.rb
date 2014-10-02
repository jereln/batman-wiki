class CreateArticlesUsers < ActiveRecord::Migration
  def change
    create_table :articles_users do |t|
      t.string :article_id
      t.string :user_id
    end
  end
end
