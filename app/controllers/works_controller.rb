class WorksController < ApplicationController
  def index
    if params.has_key?(:cat)
      @cat = params[:cat]
      @works = Work.where("category = ?", params[:cat])
    else
      @cat = ''
      @works = Work.all
    end
  end

  def show
    @work = Work.find(params[:id])
  end
end
