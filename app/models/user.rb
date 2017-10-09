class User < ApplicationRecord
    validates_format_of :first_name, :without => /\d/
  before_save { self.email = email.downcase }
  validates :first_name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

                    def to_param
                      first_name
                    end
                    def self.find(input)
                        input.to_i == 0 ? find_by_first_name(input) : super
                      end
end
