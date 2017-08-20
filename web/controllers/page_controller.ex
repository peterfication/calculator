defmodule Calculator.PageController do
  use Calculator.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
