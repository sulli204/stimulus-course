class User < ApplicationRecord
  enum role: {patron: 0, librarian: 1}
  has_secure_password
end
