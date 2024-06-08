defmodule PersonalMoneyManagement.Application.UseCases.CreateAccount do
  alias PersonalMoneyManagement.Application
  alias PersonalMoneyManagement.Domain.Entities.Account

  def execute(account_params) do
    repo = Application.account_repository()
    account = %Account{id: UUID.uuid4(), balance: account_params.balance}
    repo.create_account(account)
  end
end
