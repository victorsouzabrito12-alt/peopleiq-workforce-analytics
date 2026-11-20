CREATE OR REPLACE VIEW analytics.vw_dashboard_workforce AS

SELECT
    w.employee_number,
    w.age,
    w.gender,
    w.department,
    w.job_role,
    w.job_level,
    w.marital_status,
    w.education_field,
    w.business_travel,
    w.attrition,
    w.over_time,

    w.monthly_income,
    c.education,
    c.daily_rate,
    c.hourly_rate,
    c.monthly_rate,
    c.percent_salary_hike,
    c.performance_rating,
    c.stock_option_level,

    w.total_working_years,
    w.years_at_company,
    a.years_in_current_role,
    a.years_since_last_promotion,
    a.years_with_curr_manager,

    a.distance_from_home,
    e.training_times_last_year,

    w.environment_satisfaction,
    w.job_satisfaction,
    w.job_involvement,
    w.work_life_balance,
    w.relationship_satisfaction

FROM analytics.vw_workforce_overview AS w

LEFT JOIN analytics.vw_attrition_analysis AS a
    ON w.employee_number = a.employee_number

LEFT JOIN analytics.vw_compensation_career AS c
    ON w.employee_number = c.employee_number

LEFT JOIN analytics.vw_employee_experience AS e
    ON w.employee_number = e.employee_number;