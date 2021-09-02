class TopicsController < ApplicationController
  before_action :set_sub
  def index
    @topics = @sub.topics
    render component: 'Topics', props: { topics: @topics }
  end

  def show
    @topics = @sub.topics.find(params[:id])
    render component: 'Topic', props: { topic: @topic }
  end

  def new
  end

  def edit
  end

  private
    def set_sub
      @sub = Sub.find(params: [:sub_id])
    end
end
