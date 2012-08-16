class InfoController < ApplicationController
  
  def home
    @home = true
  end


  def main
    @gallery_path = "all"
    @pictures = [
      {
        pic_lirycs: "sialalala",
        picture_name: "1"
      },
      {
        pic_lirycs: "sialalalalala",
        picture_name: "2"
      },
      {
        pic_lirycs: "",
        picture_name: "3"
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
      
      ]
  end

  def grafitti
    @gallery_path = "small/grafitti"
    @pictures = Dir.entries("app/assets/images/#{@gallery_path}")
    @pictures.reject! { |item| [".", ".."].include?(item) }
    @pictures.map! { |item| { :picture => item } }
  end
end