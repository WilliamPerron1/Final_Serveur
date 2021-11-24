class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :games

    #has many mais pointe vers les foreign key exemple createur id pour avoir les games que ta creer
    #meme chose mais aussi avec opponent id pour avoir les game que tetais le opponent


    validates :email, presence: true, uniqueness:true
    validates :encrypted_password, presence: true

    
end
