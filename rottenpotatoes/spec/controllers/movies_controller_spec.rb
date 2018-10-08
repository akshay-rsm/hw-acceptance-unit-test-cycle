require 'rails_helper'
require 'spec_helper'

describe MoviesController do
    it 'destroy a movie' do
        movie = Movie.create(:title => 'The A-team')
        delete:destroy, :id => movie.id
        expect{Movie.find(movie.id)}.to raise_error(ActiveRecord::RecordNotFound)
    end
    
end