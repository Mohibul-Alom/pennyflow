defmodule PersonalMoneyManagement.Transaction do
  defstruct [:id, :amount, :description, :date, :account_id, :user_id]
end
