class Article < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 3}
  validates :description, presence: true, length: {minimum: 10}

#errors: @object.errors.any?
#error_messages: @object.errors.full_messages

end
