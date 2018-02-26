require 'csv'

class UserGenerator
  def initialize(file_path)
    @data = CSV.read(file_path)
  end

  def generate_user(age)
    head, *tail = @data
    tail.each do |row|
      if row[1].include?(age)
        user = User.new
        user.email = "#{row[1].downcase}@ntu.edu.tw"
        user.password = row[1].downcase
        user.name = row[2]
        user.jobs = row[3]
        user.motto = row[4]
        user.role = "normal"
        user.save
        add_department(user)
        #check_role(user)
      end
    end
  end

  def add_department(user)
    Department.all.each do |d|
      if user.jobs.include?(d.name)
        user.department_id = d.id
        user.save
        return
      end
    end
  end

  def check_role(user)
    if user.department.name == "學術部" || "召部"
      user.role = "admin"
    end
    user.save
  end

  def delete_all
    User.all.each do |u|
      u.destroy
    end
  end
end


