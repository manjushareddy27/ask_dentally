class QuestionsController < ApplicationController
  before_action :ensure_logged_in, only: [:create, :destroy]

   def new
     @question = Question.new
   end

   def show
     @question = Question.find(params[:id])

     if Current.user
       @answer = @question.answers.build
     end
   end

   def edit
     @question = Question.find(params[:id])
   end

   def create
     @question = Question.new(question_params)
     @question.title.strip!

     if @question.title.length > 0
       @question.user = Current.user

       if @question.save
         redirect_to edit_question_path(@question)
       else
         render 'new'
       end
     else
       redirect_to root_path
       flash[:notice] = "Question cannot be empty"
     end
   end

   def update
     @question = Question.find(params[:id])
     question_params[:title].strip!

     if question_params[:title].length > 0
        @question.user = Current.user

       if @question.update(question_params)
         redirect_to @question
       else
         render 'edit'
       end
     else
       flash[:notice] = "Question cannot be empty"
       redirect_to edit_question_path(@question)
     end
   end

   def destroy
     @question = Question.find(params[:id])
     # if user is logged in AND user is the one who wrote the question
     if Current.user && Current.user == @question.user
       @question.destroy
     else
       flash[:notice] = "you cannot delete this question"
     end
     redirect_to root_path
   end

   private
   def question_params
     params.require(:question).permit(:text, :title)
   end
end
