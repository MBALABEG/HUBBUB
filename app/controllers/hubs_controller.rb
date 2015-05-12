class HubsController < ApplicationController

    def new
        tag = params[:hashtag]
        @insta = Instagram.tag_recent_media(tag)
        @twitter = $twitter_client.search("#" + tag).take(20)
    end

    def create
        @hub = Hub.new
        @hub.instagram_ids = params[:instagrams]
        if @hub.save
            redirect_to "/"
        else
            render "new"
        end
    end

    def show

    end

end


