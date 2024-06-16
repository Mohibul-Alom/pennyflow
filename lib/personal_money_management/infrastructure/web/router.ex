defmodule PersonalMoneyManagement.Infrastructure.Web.Router do
  use Plug.Router

  require Logger

  plug(:match)
  plug(:dispatch)

  post "/accounts" do
    {:ok, body, conn} = Plug.Conn.read_body(conn)
    account_params = Jason.decode!(body)

    case PersonalMoneyManagement.Application.UseCases.CreateAccount.execute(account_params) do
      {:ok, account} ->
        send_resp(conn, 201, Jason.encode!(%{status: "success", account: account}))

      {:error, reason} ->
        send_resp(conn, 400, Jason.encode!(%{status: "error", reason: reason}))
    end
  end

  match _ do
    send_resp(conn, 404, "Not found")
  end
end
