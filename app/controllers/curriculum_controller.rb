class CurriculumController < ApplicationController
  def show
  end

  def edit
    if reserved_for :manager
      @curriculum = Curriculum.count > 0 ? Curriculum.get(0) : Curriculum.new
    end
  end

  def update
    if reserved_for :manager
      @curriculum = Curriculum.get(0)

      respond_to do |format|
        if @curriculum.update_attributes(params[:curriculum])
          flash['info'] = 'Curriculum was successfully updated.'
          format.html { redirect_to curriculum_url }
          format.json { head :no_content }
        else
          flash['error'] = 'Could not update the Curriculum.'
          format.html { render :action => 'edit' }
          format.json { render :json => @curriculum.errors, :status => :unprocessable_entity }
        end
      end
    end
  end
end
