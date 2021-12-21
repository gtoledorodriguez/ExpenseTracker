class AccountController < ApplicationController
    def new
        @account = Account.new
    end

    def create
        @account = Account.new(account_params)

        if @account.save
            redirect_to @account
        else
            render 'new'
        end
    end

    def show
        @account = Account.find(params[:id])
    end

    def index
        @account = Account.all 
    end

    private
        def account_params
            params.require(:account).permit(:type,:balance)
        end
end
