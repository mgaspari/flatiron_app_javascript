class Api::V1::ItemsController < ApplicationController

  def show
    name = "#{params[:slack_name]}.com"
    @student = Student.find_by(slack_name: name)
    render json: @student.items
  end

  def index
    @items = Item.all
    render json: @items
  end

  def create
    @student = Student.find_or_create_by(slack_name: params[:slack_name])
    @item =Item.new(name: params[:name], student_id: @student.id, start_date: params[:start_date], exp_date: params[:exp_date], storage_id: params[:storage_id], kitchen_id: 1)
    if @item.save
      NotifMailer.sample_email(params[:slack_name]).deliver
      render json: @item
    else
      message = {message: 'That item was not saved'}
      render json: message, status: :bad_request
    end

  end

  def delete
    @item = Item.find_by(id: params[:id])
    @item.delete
    message = {message: 'Deleted'}
    render json: message
  end


end
