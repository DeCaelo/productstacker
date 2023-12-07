class Stack < ApplicationRecord
  belongs_to :user
  has_many :product_stacks
  has_many :products, through: :product_stacks

  before_create :generate_unique_share_link

  def generate_unique_share_link
    loop do
      self.share_link = generate_random_string
      break unless Stack.exists?(share_link: share_link)
    end
  end

  def generate_random_string
    SecureRandom.urlsafe_base64(6)
  end
end

# 10:25:15 ❯ rails c
# Loading development environment (Rails 7.1.2)
# irb(main):001* Stack.find_each do |stack|
# irb(main):002*   stack.generate_unique_share_link
# irb(main):003*   stack.save
# irb(main):004> end
