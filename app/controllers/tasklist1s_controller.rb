class Tasklist1sController < ApplicationController
    def index
        @tasklist1s=Tasklist1.all
    end

    def show
        @tasklist1=Tasklist1.find(params[:id])
    end

    def edit
        @tasklist1=Tasklist1.find(params[:id])
    end

    def update
        @tasklist1=Tasklist1.find(params[:id])
         if @tasklist1.update(tasklist1_params)
            flash[:success]="更新しました"
            redirect_to @tasklist1
        else 
            flash.now[:danger]="更新できませんでした"
            render :new
        end
    end

    def destroy
        @tasklist1=Tasklist1.find(params[:id])
        @tasklist1.destroy
        
        flash[:success]="削除しました"
        redirect_to tasklist1s_url
    end

    def new
        @tasklist1=Tasklist1.new
    end

    def create
        @tasklist1=Tasklist1.new(tasklist1_params)
        
        if @tasklist1.save
            flash[:success]="保存しました"
            redirect_to @tasklist1
        else 
            flash.now[:danger]="保存できませんでした"
            render :new
        end
    end

private
def tasklist1_params
params.require(:tasklist1).permit(:content)
end

end

