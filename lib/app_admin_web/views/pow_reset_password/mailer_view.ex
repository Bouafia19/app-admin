defmodule AppAdminWeb.PowResetPassword.MailerView do
  use AppAdminWeb, :mailer_view

  def subject(:reset_password, _assigns), do: "Reset password link"
end
