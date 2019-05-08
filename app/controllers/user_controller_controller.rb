class UserControllerController < ApplicationController
    def index
        @users= User.first
        @user_address=Address.where(:id=>User.first.address_id).first
        @experience= User.first.experience
        @education= User.first.education
        @projects=User.first.personalprojects
        @awards=User.first.personalaward
    end
end
