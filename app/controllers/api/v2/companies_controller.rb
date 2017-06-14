class Api::V2::CompaniesController < ApplicationController

  def index
    @companies = Company.all
    render :index
  end

  def show
    @company = Company.find_by(id: params[:id])
    render :show
  end

  def create
    @company = Company.create(name: params[:name], buzzword: params[:buzzword], bs: params[:bs])
    render :show
  end

  def update
    @company = Company.find_by(id: params[:id])
    @company.update(name: params[:name], buzzword: params[:buzzword], bs: params[:bs])
    render :show
  end

  def destroy
    @company = Company.find_by(id: params[:id])
    @company.destroy
    render :index
  end
end
