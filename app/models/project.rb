class Project < ApplicationRecord
    belongs_to :company  , optional: true
    belongs_to :project_leader , optional: true
end
