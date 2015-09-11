class Inquiry < ActiveRecord::Base
  validates :name, presence:{message:'名前を入れてください'}
  validates :email, presence:{message:'メールアドレスを入れてください'}
  validates :message, presence:{message:'内容を入力してください'}
end
