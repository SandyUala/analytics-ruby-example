analytics-ruby-example
==============

analytics-ruby is a ruby client for [Astronomer](http://www.astronomer.io), originally authored by Segment.

## Install 

Clone Repo `git clone https://github.com/astronomerio/analytics-ruby-example.git`

## Ruby Example

#### 1) Change your working directory to analytics-ruby-example/lib/.

#### ) Update test.rb with your appId.
```
require './example'
analytics = Example.new('appId')
analytics.runExamples

```

#### 3) Execute `ruby test.rb`.

#### 4) Check your live stream for events. 

## Rails Example

#### 1) Change your working directory analytics-ruby-example/lib/rails-example/example.

#### 2) Update app/controllers/index_controller.rb with your appId.

```
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

```
#### 3) Execute `rails server`.

#### 4) Go to browser and navigate to localhost:3000. 

#### 5) Check your live stream for events. 

