#!/bin/bash

cd /home/v999/Desktop/AristAI/skill-match/apps/web-ui

# Fix CareerHeader unused props
sed -i 's/userName,/\/\/ userName,/g' src/components/CareerTracker/CareerHeader.tsx
sed -i 's/currentIndustry,/\/\/ currentIndustry,/g' src/components/CareerTracker/CareerHeader.tsx  
sed -i 's/marketInsights,/\/\/ marketInsights,/g' src/components/CareerTracker/CareerHeader.tsx

# Fix DonutChart unused prop
sed -i 's/industry,/\/\/ industry,/g' src/components/CareerTracker/DonutChart.tsx

# Fix OrbitalSkills array map index
sed -i 's/\.map((bubble, index) =>/.map((bubble) =>/g' src/components/OrbitalSkills.tsx

# Fix JobMatchesDashboard map index
sed -i 's/\.map((job, index) =>/.map((job) =>/g' src/components/JobMatchesDashboard.tsx

# Fix SkillDemandDashboard map index
sed -i 's/\.map((skill, index) =>/.map((skill) =>/g' src/components/SkillDemandDashboard.tsx

echo "Fixed remaining map index errors"