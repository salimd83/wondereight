class WorksController < ApplicationController
  def index
    if params.has_key?(:cat)
      @works = Work.where("category = ?", params[:cat])
    else
      @works = Work.all
    end
  end

  def show
  end
end
