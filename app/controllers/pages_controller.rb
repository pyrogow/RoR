class PagesController < ApplicationController
    def about
        @heading = 'Page about Us!'
        @sometext = 'This is exaple of using some text'
    end
end
