class UserControllerController < ApplicationController
    def index
        @users= User.first
        @experience= User.first.experience
        @education= User.first.education
        @projects=User.first.personalprojects
        @awards=User.first.personalaward
    end
end
