module Importer
    require 'csv'

    def self.import_data!(user_id,link)
        Photo.transaction do
            begin
                self._import_data!(user_id,link)
            rescue
                raise Active::Rollback, "Rolling back all the transactions till now"                
            end
    end

    def self._import_data!(user_id, link)
        user=User.where(:id=>user_id).first
        raise StandardError, "Project not found." if user.nil?
        
        csv_file=File.read(Rails.root.join(link))
        csv= CSV.parse(csv_text,
                :headers=>true,
                :encoding =>"ISO-8859-1")

        csv.each do |row|
            link_name=row['link']
            description= row['description']

            unless Photo.exists>(:link=>link_name)
                Photo.create!(:link=>link_name,
                    :description => description,
                    :user=>user)
            end
        end

    end

end