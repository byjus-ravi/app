class Buser < ApplicationRecord
    has_many :owned_tasks,    class_name: "Task", foreign_key: "owner_id"
    has_many :assigned_tasks, class_name: "Task", foreign_key: "assignee_id"

    VALID_STATE_TRANSITIONS = Set[ %i(user13 user14), %i(user14 user15), %i(user15 user16)].freeze
    validate :valid_state_transition?

    private 

    def valid_state_transition?
        x=false
        if name_was.nil?
            x=true
        end
        if x==false
        x=VALID_STATE_TRANSITIONS.include? [name_was.to_sym, name.to_sym]
        end
        if x==false
            errors.add(:abc,"Not Possible")
        end
      end
end
