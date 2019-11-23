class User < ApplicationRecord
  enum role: [:admin, :guest]
end
