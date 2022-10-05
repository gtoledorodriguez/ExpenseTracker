class AccountTransactionController < ApplicationController
    def create
        @account = Account.find(params[:account_id])
        @account_transaction = @account.account_transactions.create(account_transactions_params)
        redirect_to article_path(@account)
    end
     
    private
        def account_transactions_params
            params.require(:account_transactions).permit(:date, :trans_type, :amount)
        end
end
