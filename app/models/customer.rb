class Customer < ApplicationRecord
    belongs_to :company
    #belongs_to :project_leader , optional: true
end
