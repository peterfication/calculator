defmodule Calculator.PageController do
  use Calculator.Web, :controller
  use Drab.Controller

  def index(conn, _params) do
    render conn, "index.html", display: ""
  end
end
