defmodule PersonalMoneyManagement.AccountService do
  alias PersonalMoneyManagement.{Account, User, Transaction}

  def create_account(name) do
    %Account{
      id: :erlang.unique_integer([:positive]),
      name: name,
      balance: 0,
      users: [],
      transactions: []
    }
  end

  def add_user(account, user) do
    %{account | users: [user | account.users]}
  end

  def add_transaction(account, transaction) do
    new_balance = account.balance + transaction.amount
    %{account | balance: new_balance, transactions: [transaction | account.transactions]}
  end

  def get_balance(account) do
    account.balance
  end
end
