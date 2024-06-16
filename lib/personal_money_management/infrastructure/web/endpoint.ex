defmodule PersonalMoneyManagement.Infrastructure.Web.Endpoint do
  use Plug.Builder

  plug(Plug.Logger)
  plug(PersonalMoneyManagement.Infrastructure.Web.Router)

  def start_link(opts \\ []) do
    {:ok, _} =
      Plug.Cowboy.http(PersonalMoneyManagement.Infrastructure.Web.Endpoint, opts)
  end

  def child_spec(opts) do
    %{
      id: __MODULE__,
      start: {__MODULE__, :start_link, [opts]},
      type: :worker,
      restart: :permanent,
      shutdown: 500
    }
  end
end
