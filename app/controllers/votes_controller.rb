class VotesController < ApplicationController
  def index
    votes = Vote.all
    render json: votes
  end

  def create
    vote = Vote.new(
      location_id: params[:location_id],
      user_id: params[:user_id],
      vote_value_cd: params[:vote_value_cd]
    )
    vote.save
    
    render json: vote
  end

  def show
    vote = Vote.find_by(id: params[:id])
    render json: vote
  end

  def update
    vote = Vote.find_by(id: params[:id])
    vote.location_id = params[:location_id] || vote.location_id
    vote.user_id = params[:user_id] || vote.user_id
    vote.vote_value_cd = params[:vote_value_cd] || vote.vote_value_cd
    vote.save
    render json: vote.as_json
  end

  def destroy
    vote = Vote.find_by(id: params[:id])
    vote.destroy
    render json: { message: "Vote succesfully destroyed" }
  end
end
