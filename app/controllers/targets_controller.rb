class TargetsController < ApplicationController
  before_filter :set_target, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :only => [:new, :edit, :destroy]

  respond_to :html

  def index
    @targets = Target.all
    respond_with(@targets)
  end

  def show
    respond_with(@target)
  end

  def new
    @target = Target.new
    respond_with(@target)
  end

  def edit
  end

  def create
    @target = Target.new(params[:target])
    @target.save
    respond_with(@target)
  end

  def update
    @target.update_attributes(params[:target])
    respond_with(@target)
  end

  def destroy
    @target.destroy
    respond_with(@target)
  end

  private
    def set_target
      @target = Target.find(params[:id])
    end
end
