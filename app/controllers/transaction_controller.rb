class TransactionController < ApplicationController  
    def new
      @transaction = Transaction.new
    end
  
    def create
      @transaction = Transaction.new(trans_params)
  
      if @transaction.save
        redirect_to @transaction
      else
        render 'new'
      end
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
  