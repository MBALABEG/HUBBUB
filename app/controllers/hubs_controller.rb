class HubsController < ApplicationController
    include HubsHelper

    def new
        @instagram = instagramHelper
        @gramIdsArray = instaArrayHelper(@instagram)

        @twitter = twitterHelper
        @tweetIdsArray = tweetArrayHelper(@twitter)
        @hub = Hub.new
    end

    def create
        @hub = Hub.new(social_params)
        instagram = params[:social_ids].to_a
        tweet = params[:social_ids2].to_a
        @hub.social_ids = tweet + instagram

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


