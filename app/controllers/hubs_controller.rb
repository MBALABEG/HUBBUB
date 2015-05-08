class HubsController < ApplicationController

    def new
        tag = params[:hashtag]
        @insta = Instagram.tag_recent_media(tag)
        @twitter = $twitter_client.search("#" + tag).take(20)
    end

    def create
        store = []
        @insta.each do |gram|
            store.push(gram.id)
        end
    end

end


