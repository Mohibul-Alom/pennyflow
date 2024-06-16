defmodule PersonalMoneyManagement.Application do
  use Application

  def start(_type, _args) do
    IO.puts("Application starting...")
    PersonalMoneyManagement.start()

    children = [
      # Define workers and child supervisors to be supervised
      # worker(PersonalMoneyManagement.Worker, [arg1, arg2, arg3])
      PersonalMoneyManagement.Infrastructure.Web.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PersonalMoneyManagement.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
