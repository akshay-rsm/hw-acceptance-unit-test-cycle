Given(/^the following movies exist:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.hashes.each do |movie_hash|
    Movie.create movie_hash
  end
end

Then(/^the director of "([^"]*)" should be "([^"]*)"$/) do |arg1, arg2|
  movie = Movie.find_by(title: arg1)
  (movie.director == arg2).should be true
end
