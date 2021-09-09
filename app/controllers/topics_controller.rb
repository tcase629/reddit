class TopicsController < ApplicationController
  before_action :set_sub

  def index
    # @topics = Topic
    @topics = @sub.topics
    render component: 'Topics', props: { sub: @sub, topics: @topics }
  end

  def show
    @topic = @sub.topics.find(params[:id])
    render component: 'Topic', props: { sub: @sub, topic: @topic }
  end

  def new
    @topic = @sub.topics.new
    render component: 'TopicNew', props: { sub: @sub, topic: @topic }
  end

  def create
    @topic = @sub.topics.new(topic_params)
    if @topic.save 
      redirect_to root_path
      # redirect_to subs_topic_path(@sub, @topic)
      # redirect_to subs_topics_path(@sub)
    else 
      render component: 'TopicNew', props: { sub: @sub, topic: @topic }
    end
  end

  def edit
    @topic = @sub.topics.find(params[:id])
    render component: 'TopicEdit', props: { sub: @sub, topic: @topic }
  end

  def update
    @topic = @sub.topics.find(params[:id])
    if @topic.update(topic_params) 
      redirect_to root_path
    else 
      render component: 'TopicEdit', props: { sub: @sub, topic: @topic }
    end
  end

  def destroy
    @sub.topics.find(params[:id]).destroy
    redirect_to root_path
  end

  private 
    def set_sub
      @sub = Sub.find(params[:sub_id])
    end
end
