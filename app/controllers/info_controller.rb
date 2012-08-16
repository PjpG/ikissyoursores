class InfoController < ApplicationController
  before_filter :load_gallery
  def home
    @home = true
  end


  def all
  end

  def grafitti
    @pictures = [
      {
        pic_lirycs: "sialalala",
        picture_name: "1"
      }
    ]
    
    @gallery_name = "graffiti"
  end

  def dark
    @pictures = [
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
        picture_name: "8"
      },
      {
        pic_lirycs: "",
        picture_name: "9"
      }
    ]
    @gallery_name = "dark"
  end
  
  
  private
  
  def load_gallery
    @gallery_path = "all"
    @pictures = [
      {
        pic_lirycs: "sialalala",
        picture_name: "graffiti/1"
      },
      {
        pic_lirycs: "sialalalalala",
        picture_name: "2"
      },
      {
        pic_lirycs: "",
        picture_name: "dark/3"
      },
      {
        pic_lirycs: "",
        picture_name: "4"
      },
      {
        pic_lirycs: "",
        picture_name: "5"
      },
      {
        pic_lirycs: "",
        picture_name: "6"
      },
      {
        pic_lirycs: "",
        picture_name: "dark/7"
      },
      {
        pic_lirycs: "",
        picture_name: "dark/8"
      },
      {
        pic_lirycs: "",
        picture_name: "dark/9"
      },
      {
        pic_lirycs: "",
        picture_name: "10"
      }
    ]
  end
end