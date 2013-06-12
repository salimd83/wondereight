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
    # @work = Work.where("title = ")
    @work = Work.where("slug_title = ?", params[:project])
  end
end
