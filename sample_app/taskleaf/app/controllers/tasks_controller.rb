class TasksController < ApplicationController
  def index
      @tasks = Task.all
  end

  def show
      @task = Task.find(params[:id])
  end

  def new
  end

  def edit
      @task = Task.find(params[:id])
  end

  def update
      task = Task.find(params[:id])
      task.update!(task_params)
      redirect_to tasks_url, notice: "タスク「#{task.name}」を更新しました。"
  end
  
  def new
      @task = Task.new
  end

  def create
#      task = Task.new(task_params)
#      task.save!
#      redirect_to tasks_url, notice: "タスク: 「#{task.name}」を登録しました。"

       @task = Task.new(task_params) # Taskオブジェクトを@taskというインスタンス変数に代入するように変更

       if @task.save                 # 登録用メソッド。save!では無くsaveに変更して戻り値で制御を変えるように変更
        redirect_to @task, notice: "タスク「#{@task.name}」を登録しました。"
       else
        render :new                  # 検証エラーの時の処理を追加(falseの時はrender :newによって登録用フォームを再表示
       end	
  end


  def destroy
      task = Task.find(params[:id])
      task.destroy
      redirect_to tasks_url, notice: "タスク「#{task.name}」を削除しました。"
  end




  private

  def task_params
      params.require(:task).permit(:name, :description)
  end

end
