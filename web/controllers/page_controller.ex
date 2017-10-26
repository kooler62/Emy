defmodule Emy.PageController do
  use Emy.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
