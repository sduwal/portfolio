class UserControllerController < ApplicationController
    def index
        @users= User.first
        @experience= User.first.experiences
        @education= User.first.educations
        @projects=User.first.personalprojects
        @awards=User.first.personalawards
    end

    def photo
    
    end

end
