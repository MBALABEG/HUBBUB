class HubsController < ApplicationController
    include HubsHelper

    def new
        @instagram = instagramHelper
        @gramIdsArray = instaArrayHelper(@instagram)

        @twitter = twitterHelper
        @hub = Hub.new
    end

    def create
        @hub = Hub.new(social_params)
        @hub.social_ids = params[:social_ids].to_a

        if @hub.save
            redirect_to "/"
        else
            render "new"
        end
    end

    def show
        @hub = Hub.find(params[:id])
    end

    private

    def social_params
        params.permit(:social_ids)
    end

end


