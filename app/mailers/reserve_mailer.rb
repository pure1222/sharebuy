class ReserveMailer < ApplicationMailer
    def reserve_share(applicant)
        @applicant = applicant
        mail to: applicant.email, subject: "{Share buy}ご利用いただきありがとうございます。"
        mail to: "share.buy1028@gmail.com", subject: "#{applicant.email}からのご希望依頼です。"
    end
end
