defmodule Emy.PageController do
  use Emy.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def user(conn, %{"id" => id}) do
    id="this is user by"<>id<>"id"
    render conn, "user.html",id: id
  end


end
