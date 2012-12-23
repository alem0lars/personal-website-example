class PresentationItemsController < ApplicationController
  before_filter :authenticate_user!, :except => []

  def new
    if reserved_for :manager
      @presentation_item = PresentationItem.new

      respond_to do |format|
        format.html
        format.json { render :json => @presentation_item }
      end
    end
  end

  def edit
    if reserved_for :manager
      @presentation_item = PresentationItem.find(params[:id])
    end
  end

  def create
    if reserved_for :manager

      @presentation_item = PresentationItem.new(params[:presentation_item])

      respond_to do |format|
        if @presentation_item.save
          flash['info'] = 'Presentation Item was successfully created.'
          format.html { redirect_to home_url }
          format.json { render :json => @presentation_item, :status => :created, :location => @presentation_item }
        else
          flash['error'] = 'Could not create the Presentation Item.'
          format.html { render :action => 'new' }
          format.json { render :json => @presentation_item.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  def update
    if reserved_for :manager
      @presentation_item = PresentationItem.find(params[:id])

      respond_to do |format|
        if @presentation_item.update_attributes(params[:presentation_item])
          flash['info'] = 'Presentation Item was successfully updated.'
          format.html { redirect_to home_url }
          format.json { head :no_content }
        else
          flash['error'] = 'Could not update the Presentation Item.'
          format.html { render :action => 'edit' }
          format.json { render :json => @presentation_item.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  def destroy
    if reserved_for :manager

      @presentation_item = PresentationItem.find(params[:id])
      @presentation_item.destroy

      respond_to do |format|
        format.html { redirect_to home_url }
        format.json { head :no_content }
      end
    end
  end

end
