class User < ApplicationRecord
   validates :name, presence:true, uniqueness: true
   # validates  :type, presence:true, inclusion:

   has_secure_password
end
