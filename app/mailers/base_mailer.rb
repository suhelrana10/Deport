class BaseMailer < ApplicationMailer


  add_template_helper(EmailHelper)

  add_template_helper(TryHelper)

end
