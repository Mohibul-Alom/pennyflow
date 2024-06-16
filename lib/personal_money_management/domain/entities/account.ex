# lib/personal_money_management/domain/entities/account.ex
defmodule PersonalMoneyManagement.Domain.Entities.Account do
  @derive {Jason.Encoder, only: [:id, :balance, :transactions]}
  defstruct [:id, :balance, :transactions]
end
