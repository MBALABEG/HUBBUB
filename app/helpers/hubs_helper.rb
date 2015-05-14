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

    def instaArrayHelper(receivedInstagram)
        @instaArray = []
        receivedInstagram.each do |photo|
                gram_id = photo.images.low_resolution
                @instaArray.push(gram_id)
        end
        @instaArray
    end

    def tweetArrayHelper(receivedTweet)
        @tweetArray = []
        receivedTweet.each do |tweet|
            tweet_id = tweet.text
            @tweetArray.push(tweet_id)
        end
        @tweetArray
    end
end
