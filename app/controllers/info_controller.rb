class InfoController < ApplicationController
  before_filter :load_galleries

  def home
    @home = true
  end


  def all
    
    @all = true
    
    @dark_pictures.each do |pic|
      pic.each do |key, value|
        if key == :picture_name 
          value.replace "dark/#{value}"
        end
      end
    end
    
    @graffiti_pictures.each do |pic|
      pic.each do |key, value|
        if key == :picture_name 
          value.replace "graffiti/#{value}"
        end
      end
    end

    
    @all_pictures = @graffiti_pictures + @dark_pictures + @other_pictures
  end

  def graffiti
    
    @graffiti = true
    
    @gallery_name = "graffiti"
  end

  def dark
    @dark = true
    @gallery_name = "dark"
  end
  
  def robots
    robots = File.read(Rails.root + "config/robots.#{Rails.env}.txt")
    render :text => robots, :layout => false, :content_type => "text/plain"
  end
  
  private
  
  def load_galleries
    @gallery_path = "all"
    @gallery_full_path = "app/assets/images/all/big"
    @dark_pictures = [
      {
        picture_name: "3"
      },
      {
        picture_name: "7"
      },
      {
        picture_name: "9"
      },
      {
        picture_name: "8"
      }
    ]
    
    @graffiti_pictures = [
      {
        picture_name: "1"
      }
    ]
    
    
    @other_pictures = [
      {
        picture_name: "2"
      },
      {
        picture_name: "4"
      },
      {
        picture_name: "5"
      },
      {
        picture_name: "6"
      },
      {
        picture_name: "10"
      }
    ]
  end
end