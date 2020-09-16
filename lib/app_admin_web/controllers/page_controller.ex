defmodule AppAdminWeb.PageController do
  use AppAdminWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
