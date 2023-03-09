class SampleController<ApplicationController
    def index
        puts "Added new code"
        puts "Index page is called"
        puts "Second line added"
    end
    def about
        puts "Params #{params[:id]}"
        puts "About page is called"
    end
end