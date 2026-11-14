select employees.firstName, employees.lastName,offices.officeCode, offices.city
from employees join offices on employees.officeCode = offices.officeCode;
