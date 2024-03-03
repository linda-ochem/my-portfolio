#!/bin/bash

# Interactive prompt for commit message
read -p "Enter commit message: " commit_message

# Interactive prompt for branch name
read -p "Enter branch name: " branch_name

# Check if the branch already exists
if git rev-parse --verify "$branch_name" >/dev/null 2>&1; then
  echo "Branch '$branch_name' already exists."
else
  # Create a new branch
  git checkout -b "$branch_name"
  echo "New branch '$branch_name' created."
fi

# Add all changes
git add .

# Commit changes with provided message
git commit -m "$commit_message"

# Push changes to specified branch
git push origin "$branch_name"

echo "Code successfully pushed to branch $branch_name with commit message: $commit_message"



# #!/bin/bash

# # Interactive prompt for commit message
# read -p "Enter commit message: " commit_message

# # Interactive prompt for branch name
# read -p "Enter branch name: " branch_name

# # Add all changes
# git add .

# # Commit changes with provided message
# git commit -m "$commit_message"

# # Push changes to specified branch
# git push origin "$branch_name"

# echo "Code successfully pushed to branch $branch_name with commit message: $commit_message"
