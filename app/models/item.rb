class Item < ApplicationRecord
  belongs_to :storage
  belongs_to :student
  @@expired_items = []

  def self.check_exp_date
    @@expired_items = self.all.select { |i| i.exp_date.today? }

  end

  def self.send_emailer

    self.check_exp_date.each do |item|
      @student = Student.find_by(id: item.student_id)
      NotifMailer.sample_email(@student.slack_name, item).deliver
    end
  end

  def self.check_work
    NotifMailer.sample_email('suzy.cho@flatironschool.com').deliver
  end


end
