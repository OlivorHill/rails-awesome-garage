class AddImageUrlToCars < ActiveRecord::Migration[7.2]
  def change
    add_column :cars, :image_url, :text
  end
end
