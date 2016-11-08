require 'segment/analytics'

class Example

    def initialize(appId)
        @appId = appId  
        @analytics = Segment::Analytics.new({
            app_id: @appId
        }) 
    end

    def runExamples
        @analytics.track(
            {
                user_id: 123123213,
                event: 'Created Account'
            }
        )
        
        @analytics.identify(
            {
                user_id: '019mr8mf4r',
                traits: { email: "example@test.com", friends: 872 },
                context: {ip: '8.8.8.8'}
            }
        )
        
        @analytics.page(
            {
                user_id: 12341234,
                category: 'Docs',
                name: 'Ruby library',
                properties: { url: 'https://segment.com/libraries/ruby/' }
            }
        )
        
        @analytics.group(
            {
                user_id: '019mr8mf4r',
                group_id: '56',
                traits: { name: 'Initech', description: 'Accounting Software'}
            }
        )

        @analytics.flush

    end
end

