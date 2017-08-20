defmodule Calculator.PageController do
  use Calculator.Web, :controller
  use Drab.Controller

  def index(conn, _params) do
    render conn, "index.html", counter: 0
  end
end
