class AccountController < ApplicationController
    def new
        @account = Account.new
    end

    def edit
        @account = Account.find(params[:id])
    end

    def update
        @account = Account.find(params[:id])

        if @account.update(account_params)
            redirect_to @account
        else
            render 'edit'
        end
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

    def destroy
        @account = Account.find(params[:id])
        @account.destroy

        redirect_to account_index_path
    end

    private
        def account_params
            params.require(:account).permit(:type,:balance)
        end
end
