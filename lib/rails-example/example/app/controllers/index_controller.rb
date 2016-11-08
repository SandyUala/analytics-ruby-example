require 'segment/analytics'

class IndexController < ApplicationController
    def home 
        analytics = Segment::Analytics.new({
            app_id: 'appId'
        })
        analytics.track(
            {
                user_id: 123123213,
                event: 'Page Tracked'
            }
        )
        analytics.flush
        render "layouts/application.html.erb"
    end

end

