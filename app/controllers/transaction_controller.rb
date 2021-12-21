class TransactionController < ApplicationController
    def index
    end
  
    def new
    end
  
    def create
      @transaction = Transaction.new(trans_params)
  
      @transaction.save
      redirect_to @transaction
    end
  
    def show
        @transaction = Transaction.find(params[:id])
    end

    def index
        @transaction = Transaction.all 
    end
  
    private
      def trans_params
        params.require(:transaction).permit(:type, :amount, :date)
      end
      
  end
  