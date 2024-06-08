defmodule PersonalMoneyManagement.Infrastructure.DataAccess.FileAccountRepository do
  @behaviour PersonalMoneyManagement.Domain.Repositories.AccountRepository

  @data_file "accounts.json"

  def create_account(account) do
    accounts = read_accounts()
    updated_accounts = [account | accounts]
    write_accounts(updated_accounts)
    {:ok, account}
  end

  def get_account(id) do
    accounts = read_accounts()

    case Enum.find(accounts, fn acc -> acc.id == id end) do
      nil -> {:error, "Account not found"}
      account -> {:ok, account}
    end
  end

  def update_account(updated_account) do
    accounts = read_accounts()

    updated_accounts =
      Enum.map(accounts, fn acc ->
        if acc.id == updated_account.id, do: updated_account, else: acc
      end)

    write_accounts(updated_accounts)
    {:ok, updated_account}
  end

  def delete_account(id) do
    accounts = read_accounts()
    updated_accounts = Enum.reject(accounts, fn acc -> acc.id == id end)
    write_accounts(updated_accounts)
    {:ok, %{}}
  end

  defp read_accounts do
    if File.exists?(@data_file) do
      @data_file
      |> File.read!()
      |> Jason.decode!()
    else
      []
    end
  end

  defp write_accounts(accounts) do
    accounts
    |> Jason.encode!()
    |> File.write!(@data_file)
  end
end
