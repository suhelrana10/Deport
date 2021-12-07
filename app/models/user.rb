class User < ApplicationRecord
   validates :name, presence:true, uniqueness: true


   # validates  :user_type, presence:true, inclusion: user_types.keys


   has_secure_password




   enum user_types: { admins: 1, users: 2 }



end
