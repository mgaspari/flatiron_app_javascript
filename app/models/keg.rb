class Keg < ApplicationRecord
  belongs_to :kitchen

  def how_full?
    #need to have a variable that has an average
    #every day since fill up takes 100%/avg from the amount full
    #when the keg reaches zero warn julian
    #set to 0 when someone hits that it is empty
    #set to 100 when someone hits that it is full
    #change the average when someone says that it is done and update the average
  end
end
