defmodule AttackonApiWeb.DefaultController do
  use AttackonApiWeb, :controller

  def index(conn, _params) do
    text conn, 'Rumbling, Rumbling, its coming. '
  end
end
