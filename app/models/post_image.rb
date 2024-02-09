class PostImage < ApplicationRecord

  has_one_attached :image

  belongs_to :user

  # 画像が設定されない場合はapp/assets/images/NoImage.jpgという画像を表示
  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/NoImage.jpg')
      image.attach(io: File.open(file_path), filename: 'NoImage.jpg', content_type: 'image/jpeg')
    end
    image
  end

end
