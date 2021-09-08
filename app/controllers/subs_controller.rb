class SubsController < ApplicationController
  # Controller traffic directors, take from the routes and 
  # lead into the actions, run the methods

  # actions CRUD, functions we are able to view, do in the app
  # with each action they will have a method to it. name should match action 
  # actions      http verbs
  # Create       Post 
  # read         Get
  # update       put/patch
  # destroy      delete

  # logic will be in the model 

  # actions 
  # index - show all records in table, take to a page
  # show - takes in a id, and show a single record , page/logic to show a single record
  # new - pages, new form, to fill out fields for a new object, create in memo
  # edit - pages, need id, edit form, to fill out fields that the id records return
  # Create - apply to the db, create the record in the db, uses info from new form
  # update - apply to the db, update the record in the db, uses info from the edit form
  # destroy - apply to the db, delete a single record with passed id

  # controller pattern 
# def index
  #   @model_names = Model_name.all
  #   render components: 'ModelNames', props: { model_names: @model_names }
  # end

  # def show 
  #   @model_name = Model_name.find(params[:id])
  #   render components: 'ModelName', props: { model_name: @model_name }
  # end

  # def new 
  #   @model_name = Model_name.new
  #   render components: 'ModelNameNew', props: { model_name: @model_name }
  # end

  # def create
  #   @model_name = Model_name.new(model_name_params)
  #   if @model_name.save 
  #     # go to a helper 
  #   else
  #     render components: 'ModelNameNew', props: { model_name: @model_name }
  #   end
  # end

  # private 
  #   def model_name_params
  #     params.require(:model_name).permit(:attr, :attr2)
  #   end

  # def edit 
  #   @model_name = Model_name.find(params[:id])
  #   render components: 'ModelNameEdit', props: { model_name: @model_name }
  # end

  # def update
  #   @model_name = Model_name.find(params[:id])
  #   if @model_name.update(model_name_params)
  #     # take to another helper
  #   else
  #     render components: 'ModelNameEdit', props: { model_name: @model_name }
  #   end
  # end

  # def destroy
  #   @model_name = Model_name.find(params[:id])
  #   @model_name.destroy
  #   # send to another action
  #   #or 
  #   Model_name.find(params[:id]).destroy
  # end


  def index
    @subs = Sub.all
    render component: 'Subs', props: { subs: @subs }
  end

  def show
    @sub = Sub.find(params[:id])
    render component: 'Sub', props: { sub: @sub }
  end

  def new
    @sub = Sub.new
    render component: 'SubNew', props: { sub: @sub }
  end

  def create 
    @sub = Sub.new(sub_params)
    if @sub.save 
      redirect_to subs_path
    else
      render component: 'SubNew', props: { sub: @sub }
    end
  end

  def edit
    @sub = Sub.find(params[:id])
    render component: 'SubEdit', props: { sub: @sub }
  end

  def update 
    @sub = Sub.find(params[:id])
    if @sub.update(sub_params)
      redirect_to subs_path
    else
      render component: 'SubEdit', props: { sub: @sub }
    end
  end

  def destroy
    @sub = Sub.find(params[:id])
    @sub.destroy
    redirect_to subs_path

    # or 
    # Sub.find(params[:id]).destroy
    # redirect_to subs_path
  end

  private 
      # { sub:  {name: 'food'} }
      # { sub:  {name: 'food', age: 2} }
      # { sub:  {name: 'food', SELECT*CCNUM} }
      # { sub:  {name: 'SELECT*CCNUM', SELECT*CCNUM} }
      # to make sure the fields are valid going in
    def sub_params
      params.require(:sub).permit(:name)
    end
  end    