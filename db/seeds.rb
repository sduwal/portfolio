# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
    user=User.where(:id=>1).first
    raise StandardError, "Project not found." if user.nil?
        
    csv_text = File.read(Rails.root.join('lib', 'seeds', 'link.csv'))

    csv= CSV.parse(csv_text,
            :headers=>true,
            :encoding =>"ISO-8859-1")
    csv.each do |row|
        link_name=row['link']
        description= row['description']

    unless Photo.exists?(:link=>link_name)
        Photo.create!(:link=>link_name,
            :description => description,
            :user=>user)
    end
end
 