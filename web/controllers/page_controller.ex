defmodule HorseRacingDemo.PageController do
  use HorseRacingDemo.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
