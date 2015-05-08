class HubsController < ApplicationController

    def new
        tag = params[:hashtag]
        @insta = Instagram.tag_recent_media(tag)
        @twitter = $twitter_client.search("#" + tag).take(20)
    end
end
