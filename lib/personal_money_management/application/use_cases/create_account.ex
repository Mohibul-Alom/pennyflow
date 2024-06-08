defmodule PersonalMoneyManagement.Application.UseCases.CreateAccount do
  alias PersonalMoneyManagement.Dependencies

  def execute(account_params) do
    repo = Dependencies.account_repository()
    account = build_account(account_params)
    repo.create_account(account)
  end

  defp build_account(account_params) do
    %PersonalMoneyManagement.Domain.Entities.Account{
      id: UUID.uuid4(),
      balance: account_params.balance
    }
  end
end
