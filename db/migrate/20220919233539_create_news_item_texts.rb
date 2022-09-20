class CreateNewsItemTexts < ActiveRecord::Migration[7.0]
  def change
    create_table :news_item_texts do |t|
      t.string :title
      t.string :sutien
      t.string :authors
      t.string :editors
      t.text :news_text
      t.string :keywords
      t.string :related_news
      t.string :related_publisher
      t.string :posted_on

      t.timestamps
    end
  end
end
