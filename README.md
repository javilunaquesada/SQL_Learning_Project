# Introduction
Dive into the data job market, focusing on data analyst roles; we explore top-paying jobs, in_demand skills, and the optimal options (both combined)
SQL queries? Check them out here: [project_sql_folder](/project_sql/)

# Tools I used
For my deep dive into the data analyst job market, I used several tools:
- **SQL**: The backbone of my analysis
- **PostgreSQL**: the chosen database management system, ideal for handling the job posting data
- **Visual Studio Code**
- **Git & GitHub**

# Analysis
Each query for this project aimed at investigating specific aspects of the data analyst job market.

### 1. Top Paying Data Analyst Jobs
To identify the highest-paid roles I filtered data analyst roles by average yearly salary and location, focusing on remote jobs. This query highlights the high paying oportunities in the field.

```sql
SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10;
```
Here's the breakdown of the top data analyst jobs in 2023:
- **Wide Salary Range:** Top 10 paying data analyst roles span from $184,000 to $650,000, indicating significant salary potential in the field.
- **Diverse Employers:** Companies like SmartAsset, Meta, and AT&T are among those offering high salaries, showing a broad interest across different industries.
- **Job Title Variety:** There's a high diversity in job titles, from Data Analyst to Director of Analytics, reflecting varied roles and specializations within data analytics.

### 2. Skills for Top Paying Jobs

### 3. In-Demand Skills for Data Analyst

### 4. Skills Based on Salary

### 5. Most Optimal Skills to Learn

# Conclusions

### Insights
From the analysis, several general insights emerged:

1. **Top-Paying Data Analyst Jobs**: The highest-paying jobs for data analyst that allow remote work offer a wide range of salaries, the highest at $650,000.
2. **Skills for Top-Paying Jobs**: High-paying data analyst jobs require advanced proficiency in SQL, suggesting it's a critical skill foe earning a top salary.
3. **Most In-Demand Skills**

