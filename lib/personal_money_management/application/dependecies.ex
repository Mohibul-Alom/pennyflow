defmodule PersonalMoneyManagement.Dependencies do
  def account_repository() do
    PersonalMoneyManagement.Infrastructure.DataAccess.FileAccountRepository
  end
end
