class HubsController < ApplicationController
    include HubsHelper

    def new
        @insta = instagramHelper
        @twitter = twitterHelper
        @hub = Hub.new
    end

    def create
        @hub = Hub.new(social_params)
        @hub.social_ids = params[:social_ids]
        if @hub.save
            redirect_to "/"
        else
            render "new"
        end
    end

    def show
    end

    private

    def social_params
        params.require(:hub).permit(:social_ids)
    end

end


