defmodule FalseTradesWeb.PageController do
  use FalseTradesWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
