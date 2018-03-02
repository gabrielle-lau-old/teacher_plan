Rails.application.routes.draw do
  root :to => "improvement_plans#index"
  # Routes for the Action_comment resource:
  # CREATE
  get "/action_comments/new", :controller => "action_comments", :action => "new"
  post "/create_action_comment", :controller => "action_comments", :action => "create"

  # READ
  get "/action_comments", :controller => "action_comments", :action => "index"
  get "/action_comments/:id", :controller => "action_comments", :action => "show"

  # UPDATE
  get "/action_comments/:id/edit", :controller => "action_comments", :action => "edit"
  post "/update_action_comment/:id", :controller => "action_comments", :action => "update"

  # DELETE
  get "/delete_action_comment/:id", :controller => "action_comments", :action => "destroy"
  #------------------------------

  # Routes for the Goal_comment resource:
  # CREATE
  get "/goal_comments/new", :controller => "goal_comments", :action => "new"
  post "/create_goal_comment", :controller => "goal_comments", :action => "create"

  # READ
  get "/goal_comments", :controller => "goal_comments", :action => "index"
  get "/goal_comments/:id", :controller => "goal_comments", :action => "show"

  # UPDATE
  get "/goal_comments/:id/edit", :controller => "goal_comments", :action => "edit"
  post "/update_goal_comment/:id", :controller => "goal_comments", :action => "update"

  # DELETE
  get "/delete_goal_comment/:id", :controller => "goal_comments", :action => "destroy"
  #------------------------------

  # Routes for the Collaboration resource:
  # CREATE
  get "/collaborations/new", :controller => "collaborations", :action => "new"
  post "/create_collaboration", :controller => "collaborations", :action => "create"

  # READ
  get "/collaborations", :controller => "collaborations", :action => "index"
  get "/collaborations/:id", :controller => "collaborations", :action => "show"

  # UPDATE
  get "/collaborations/:id/edit", :controller => "collaborations", :action => "edit"
  post "/update_collaboration/:id", :controller => "collaborations", :action => "update"

  # DELETE
  get "/delete_collaboration/:id", :controller => "collaborations", :action => "destroy"
  #------------------------------

  # Routes for the Action_step resource:
  # CREATE
  get "/action_steps/new", :controller => "action_steps", :action => "new"
  post "/create_action_step", :controller => "action_steps", :action => "create"

  # READ
  get "/action_steps", :controller => "action_steps", :action => "index"
  get "/action_steps/:id", :controller => "action_steps", :action => "show"

  # UPDATE
  get "/action_steps/:id/edit", :controller => "action_steps", :action => "edit"
  post "/update_action_step/:id", :controller => "action_steps", :action => "update"

  # DELETE
  get "/delete_action_step/:id", :controller => "action_steps", :action => "destroy"
  #------------------------------

  # Routes for the Goal resource:
  # CREATE
  get "/goals/new", :controller => "goals", :action => "new"
  post "/create_goal", :controller => "goals", :action => "create"

  # READ
  get "/goals", :controller => "goals", :action => "index"
  get "/goals/:id", :controller => "goals", :action => "show"

  # UPDATE
  get "/goals/:id/edit", :controller => "goals", :action => "edit"
  post "/update_goal/:id", :controller => "goals", :action => "update"

  # DELETE
  get "/delete_goal/:id", :controller => "goals", :action => "destroy"
  #------------------------------

  # Routes for the Improvement_plan resource:
  # CREATE
  get "/improvement_plans/new", :controller => "improvement_plans", :action => "new"
  post "/create_improvement_plan", :controller => "improvement_plans", :action => "create"

  # READ
  get "/improvement_plans", :controller => "improvement_plans", :action => "index"
  get "/improvement_plans/:id", :controller => "improvement_plans", :action => "show"

  # UPDATE
  get "/improvement_plans/:id/edit", :controller => "improvement_plans", :action => "edit"
  post "/update_improvement_plan/:id", :controller => "improvement_plans", :action => "update"

  # DELETE
  get "/delete_improvement_plan/:id", :controller => "improvement_plans", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
