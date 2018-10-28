class ReserveMailer < ApplicationMailer
    def reserve_share(applicant)
        @applicant = applicant
        mail to: applicant.email, subject: "{Share buy}ご利用いただきありがとうございます。"
    end
end
