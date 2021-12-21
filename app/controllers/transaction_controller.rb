class TransactionController < ApplicationController  
    def new
      @transaction = Transaction.new
    end

    def edit
      @transaction = Transaction.find(params[:id])
    end

    def update
      @transaction = Transaction.find(params[:id])

      if @transaction.update(trans_params)
        redirect_to @transaction
      else
        render 'edit'
      end
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

    def destroy
      @transaction = Transaction.find(params[:id])
      @transaction.destroy
      redirect_to transaction_index_path
    end
  
    private
      def trans_params
        params.require(:transaction).permit(:type, :amount, :date)
      end
      
  end
  