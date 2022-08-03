class ActivitiesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def index
        render json: Activity.all
    end

    def destroy
        activity = Activity.find_by!(id: params[:id])
        activity.destroy
        render activity
        
    end

    private
    def record_not_found
        render json:{ "error": "Activity not found"}, status: :not_found
      end
end
