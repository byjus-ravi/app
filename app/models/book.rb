class Book < ApplicationRecord
    has_many :chapters
    after_update :abc
    private
    def abc
        puts "hello"
    end
end
