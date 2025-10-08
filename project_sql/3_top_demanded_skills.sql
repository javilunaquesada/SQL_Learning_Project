/*
Question: What are the most in-demand skills for Data Analyst?
- Join job postings to inner join table similar to previous query
- Identify the top 5 in-demand skills for Data Analyst roles
- Focus on all job postings
- Why? It helps job seekers understand which skills are most sought after in the job market
*/

SELECT 
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM
    job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_postings_fact.job_title_short = 'Data Analyst' AND
    job_postings_fact.job_work_from_home = TRUE
GROUP BY skills
ORDER BY demand_count DESC
LIMIT 5