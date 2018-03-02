class ActionCommentsController < ApplicationController
  def index
    @action_comments = ActionComment.all

    render("action_comments/index.html.erb")
  end

  def show
    @action_comment = ActionComment.find(params[:id])

    render("action_comments/show.html.erb")
  end

  def new
    @action_comment = ActionComment.new

    render("action_comments/new.html.erb")
  end

  def create
    @action_comment = ActionComment.new

    @action_comment.user_id = params[:user_id]
    @action_comment.action_step_id = params[:action_step_id]

    save_status = @action_comment.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/action_comments/new", "/create_action_comment"
        redirect_to("/action_comments")
      else
        redirect_back(:fallback_location => "/", :notice => "Action comment created successfully.")
      end
    else
      render("action_comments/new.html.erb")
    end
  end

  def edit
    @action_comment = ActionComment.find(params[:id])

    render("action_comments/edit.html.erb")
  end

  def update
    @action_comment = ActionComment.find(params[:id])

    @action_comment.user_id = params[:user_id]
    @action_comment.action_step_id = params[:action_step_id]

    save_status = @action_comment.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/action_comments/#{@action_comment.id}/edit", "/update_action_comment"
        redirect_to("/action_comments/#{@action_comment.id}", :notice => "Action comment updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Action comment updated successfully.")
      end
    else
      render("action_comments/edit.html.erb")
    end
  end

  def destroy
    @action_comment = ActionComment.find(params[:id])

    @action_comment.destroy

    if URI(request.referer).path == "/action_comments/#{@action_comment.id}"
      redirect_to("/", :notice => "Action comment deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Action comment deleted.")
    end
  end
end
