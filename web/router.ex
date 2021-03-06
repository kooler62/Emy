defmodule Emy.Router do
  use Emy.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Emy do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/users", UserController

    get "/comments/:id", CommentController, :show
  end

  scope "/user", Emy do
    pipe_through :browser # Use the default browser stack

    # route example "/user/id/{id}
    get "/id/:id", UserController, :show
  end
"""
lksflkasflaksd'asf
  asfkajsfksjfdas
  asdfkjasfkjasflkj
"""

  # Other scopes may use custom stacks.
  # scope "/api", Emy do
  #   pipe_through :api
  # end
end
