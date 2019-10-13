require 'json'

class MysteryLunchBotController < ApplicationController
  def create
    render json: generate.to_json, status: :created
  end

  def generate
    groups.map do |group|
      {
        type: group[0].dietary_requirement,
        members: group
      }
    end
  end

  def groups
    newbies.map do |newbie|
      group = [newbie]
      diet = newbie.dietary_requirement
      3.times do
        if !employees_berlin[diet].empty?
          group << employees_berlin[diet].slice!(rand(employees_berlin[diet].count))
        end
      end
      group
    end
  end

  def newbies
    current_month = "#{Date.today.strftime("%Y")}-#{Date.today.strftime("%m")}"
    Employee.where(joined_date: current_month, mystery_lunch: true)
  end


  def employees_berlin
    {
      "vegan"=> Employee.where(office: "berlin", mystery_lunch: true, dietary_requirement: "vegan") - newbies,
      "vegetarian"=> Employee.where(office: "berlin", mystery_lunch: true, dietary_requirement: "vegetarian") - newbies,
      "no-preference"=> Employee.where(office: "berlin", mystery_lunch: true, dietary_requirement: "no-preference") - newbies
    }
  end

end


