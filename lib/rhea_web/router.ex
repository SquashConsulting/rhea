defmodule RheaWeb.Router do
  use RheaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", RheaWeb do
    pipe_through :api
  end
end
