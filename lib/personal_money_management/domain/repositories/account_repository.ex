defmodule PersonalMoneyManagement.Domain.Repositories.AccountRepository do
  @callback create_account(map) :: {:ok, map} | {:error, String.t()}
  @callback get_account(String.t()) :: {:ok, map} | {:error, String.t()}
  @callback update_account(map) :: {:ok, map} | {:error, String.t()}
  @callback delete_account(String.t()) :: {:ok, map} | {:error, String.t()}
end
