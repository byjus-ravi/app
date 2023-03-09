class Task < ApplicationRecord
    belongs_to :owner,    class_name: "Buser"
    belongs_to :assignee, class_name: "Buser"
end
