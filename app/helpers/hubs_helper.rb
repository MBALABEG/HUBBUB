module HubsHelper

    def tagParamsHelper
        tag = params[:hashtag]
    end

    def instagramHelper
        @insta = Instagram.tag_recent_media(tagParamsHelper)
    end

    def twitterHelper
        @twitter = $twitter_client.search("#" + tagParamsHelper).take(20)
    end

end
