class CreateTweet < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.belongs_to :twitter_user , index: true
      t.string :text
      t.timestamps      
    end
  end
end
