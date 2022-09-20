class AddMetadataToNewsItemText < ActiveRecord::Migration[7.0]
  def change
    add_column :news_item_texts, :metadata, :string
  end
end
