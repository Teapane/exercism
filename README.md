These are my solutions to (Exercism)[http://exercism.io]

I am trying to get better at writing expressive Object-Oriented Code and I feel like exercism is one of the best ways to go about doing this.  🐳


This is my solution to the TAB parser problem.  The functionality is pretty basic as is the view.  I didn't feel like styling was all that necessary.  I think some logic could be extracted out of the controller-main the CSV parsing logic/ but I felt the simplicity of this app didn't really justify it.  I made multiple models in the Database(Merchant, Purchaser, Item) that all belong to the deal.  This way if the data inputs gets larger (More rows, etc) it would be easier to modify in the future.  Thanks
    Tyler Long

**All tests written in RSpec. To run them...

```
  fork the project/pull down the branch Teapane
  rake db:create && rake db:migrate RAILS_ENV='test'
  rspec for all tests or 
  rspec spec/path_to_file
```

**To run the server locally

```
  Fork the project
  git clone <ssh or https>
  rake db:create && rake db:migrate
  bundle
  rails s
```
  The server will default to localhost:3000
