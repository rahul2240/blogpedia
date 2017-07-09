class AddBannerImageToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :banner_image, :string
  end
end
