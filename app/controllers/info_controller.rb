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
  
  
  private
  
  def load_galleries
    @gallery_path = "all"
    
    @dark_pictures = [
      {
        pic_lirycs: "",
        picture_name: "3"
      },
      {
        pic_lirycs: "",
        picture_name: "7"
      },
      {
        pic_lirycs: "",
        picture_name: "9"
      },
      {
        pic_lirycs: "",
        picture_name: "8"
      }
    ]
    
    @graffiti_pictures = [
      {
        pic_lirycs: "sialalala",
        picture_name: "1"
      }
    ]
    
    
    @other_pictures = [
      {
        pic_lirycs: "sialalalalala",
        picture_name: "2"
      },
      {
        pic_lirycs: "",
        picture_name: "4"
      },
      {
        pic_lirycs: "sadadasdasdasdasdad",
        picture_name: "5"
      },
      {
        pic_lirycs: "",
        picture_name: "6"
      },
      {
        pic_lirycs: "",
        picture_name: "10"
      }
    ]
  end
end