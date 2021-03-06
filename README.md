[![Build Status](https://travis-ci.org/naridas/email_stats.svg?branch=master)](https://travis-ci.org/naridas/email_stats)
[![Coverage Status](https://coveralls.io/repos/github/naridas/email_stats/badge.svg?branch=hound%2Ctravis)](https://coveralls.io/github/naridas/email_stats?branch=hound%2Ctravis)
# Email Statistics Webhook

## Set up

`bundle install` 

`bin/rake db:create`

`bin/rails s`

In a separate terminal window
`cd ~/*/llirdnam-master/llirdnam `

`go run llirdnam.go http://localhost:3000/webhook/receive`

Use a Web browser and go to
`http://localhost:3000`
to see the Statistics
Refresh to see changes

## Technology used

Ruby on Rails, Rspec, Hound, Travis, Coveralls, PostgreSQL

## Thought Process

- First set up rails project with hound, travis and Coveralls
- Started on totals features first since I had a good understanding how to test it
- Made a feature test for total number statistics in order to start my TDD
- After making my test past, I refactored my code
- Created tests for click rate and open rate then do my previous steps
- Looked up information on webhooks with rails
- Unsure how to TDD my webhook controller so I created and then tested using rails s
- Tried to make a test mimicking `cd ~/*/llirdnam-master/llirdnam ` `go run llirdnam.go http://localhost:3000/webhook/receive` then check if the database is empty, which didn't work
- Added more to my tests to check if each click/open rate is working

## Assumptions

- Assumed by rate they meant the percentage of click/open for each email type e.g. click shipment/ total shipment * 100 => % 
- Change total shipment to a float since intergers don't round up, then rounded it to 2 decimal places
 
