class Post < ActiveRecord::Base
  belongs_to :user
  has_attached_file :picture, styles: {
    medium: '300x300>',
    small: '140x140>',
    thumb: '64x64!'
  },
  default_url: "/app/assets/images/ff.svg"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
end
