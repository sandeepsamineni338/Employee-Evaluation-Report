select a.criteria_type criteria_type, b.criteria_index criteria_index from eval_criterion a, criteria_matrix b
where a.criteria_score = b.criteria_desc
and a.active = 'Y';

select RI from random_index
where team_size = 3;

select * from EMP_EVALUATION;
select * from MGR_EVALUATION;
select * from EMPLOYEE;

select a.emp_id, a.salary, a.age, a.experience 
from employee a, emp_evaluation b
where a.emp_id = b.emp_id
order by a.emp_id;

select emp_id, employee_satisfaction 
from EMP_EVALUATION
order by emp_id;

select a.emp_id, (a.employee_evaluation + b.employee_evaluation)/2 employee_evaluation
from emp_evaluation a, mgr_evaluation b
where a.emp_id = b.emp_id
order by a.emp_id;

select emp_id, dependency_index
from mgr_evaluation
order by emp_id;

select * from team;
select * from team_priority;

select a.emp_id, c.priority_index 
from employee a, team b, team_priority c
where a.team_id = b.team_id
and b.team_priority = c.priority_desc
order by a.emp_id;

delete from employee
where emp_id = 1001;

update mgr_evaluation
set emp_id = 1001
where emp_id = 1003;

update emp_evaluation
set emp_id = 1001
where emp_id = 1003;

select * from employee;
select * from employee_roles;
select * from team;

select a.emp_id, a.emp_name, c.role_desc, b.team_desc, b.team_priority, a.salary, a.age, a.experience
from employee a, team b, employee_roles c
where a.role_id = c.role_id
and a.team_id = b.team_id
and a.emp_id = '1002';

select * from emp_evaluation;
select * from mgr_evaluation;

select a.emp_id, a.emp_name, c.role_desc, b.team_desc, b.team_priority, a.salary, a.age, a.experience, (d.employee_evaluation + e.employee_evaluation)/2 employee_evaluation, d.employee_satisfaction, e.dependency_index, e.business_index, (d.tech_relevance + e.tech_skills)/2 Technical_index
from employee a, team b, employee_roles c, emp_evaluation d, mgr_evaluation e
where a.role_id = c.role_id
and a.team_id = b.team_id
and a.emp_id = d.emp_id
and a.emp_id = e.emp_id
and b.team_id = 4
order by a.emp_id;
