salary = [4000,3000,1000,2000]

def average_salary(salary)
  salary.sort!
  salary.pop()
  salary.shift()
  return (salary.sum/salary.length.to_f)
end

p average_salary(salary)