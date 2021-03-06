class StreamsController < ApplicationController
  before_action :set_stream, only: [:edit, :show, :update]

  def new
    @stream = Stream.new
    @stream.build_user
  end

  def create
    @stream = Stream.create(stream_params)
    @stream.build_user(stream_params[:user_attributes])
    if @stream.save
      redirect_to @stream
    else
      render :new
    end
  end

  def index
    @streams = Stream.all
  end

  def update
    @stream.update(stream_params)
    if @stream.save
      redirect_to @stream
    else
      render :edit
    end
  end

  def destroy
    Stream.find(params[:id]).destroy
    redirect_to streams_path
  end


  private

  def set_stream
    @stream = Stream.find(params[:id])
  end

  def stream_params
    params.require(:stream).permit(:title, :views, user_attributes: [:id, :username, :popularity, :streaming])
  end
end
