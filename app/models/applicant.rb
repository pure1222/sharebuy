class Applicant < ApplicationRecord
    validates :email,:want, {presence:true}
end
