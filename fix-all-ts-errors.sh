#!/bin/bash

cd /home/v999/Desktop/AristAI/skill-match/apps/web-ui

# Fix CareerHeader.tsx
sed -i '3s/, Calendar//g' src/components/CareerTracker/CareerHeader.tsx
sed -i '3s/, TrendingUp//g' src/components/CareerTracker/CareerHeader.tsx

# Fix CareerTrackerPage.tsx  
sed -i '3s/, ArrowLeft//g' src/components/CareerTrackerPage.tsx

# Fix EnhancedUserProfile.tsx
sed -i '3s/, User//g' src/components/EnhancedUserProfile.tsx
sed -i '6s/, BarChart//g' src/components/EnhancedUserProfile.tsx
sed -i 's/getUserSkills,//g' src/components/EnhancedUserProfile.tsx
sed -i 's/, updateUserSkills//g' src/components/EnhancedUserProfile.tsx
sed -i 's/, verifyUserSkill, deleteUserSkill//g' src/components/EnhancedUserProfile.tsx
sed -i '/import type { UserSkill/d' src/components/EnhancedUserProfile.tsx
sed -i '/^import ProfileHeader/d' src/components/EnhancedUserProfile.tsx

# Fix ProfileHeader.tsx
sed -i '3s/, User//g' src/components/ProfileHeader.tsx
sed -i 's/, AnimatePresence//g' src/components/ProfileHeader.tsx

# Fix SkillDemandDashboard.tsx
sed -i '16s/, PieChart//g' src/components/SkillDemandDashboard.tsx
sed -i '17s/, Pie//g' src/components/SkillDemandDashboard.tsx
sed -i '18s/, Cell//g' src/components/SkillDemandDashboard.tsx
sed -i '20s/, Calendar//g' src/components/SkillDemandDashboard.tsx

# Fix SkillGapModal.tsx
sed -i 's/, Star//g' src/components/SkillGapModal.tsx

echo "Fixed most unused imports"