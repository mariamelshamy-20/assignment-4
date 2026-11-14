select employees.firstName, employees.lastName,offices.officeCode, offices.city
from employees join offices on employees.officeCode = offices.officeCode
where employees.officeCode = 4 or employees.officeCode = 6;