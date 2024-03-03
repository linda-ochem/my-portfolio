#!/bin/bash

# Interactive prompt for commit message
read -p "Enter commit message: " commit_message

# Interactive prompt for branch name
read -p "Enter branch name: " branch_name

# Add all changes
git add .

# Commit changes with provided message
git commit -m "$commit_message"

# Push changes to specified branch
git push origin "$branch_name"

echo "Code successfully pushed to branch $branch_name with commit message: $commit_message"





# #!/bin/bash

# # Check if user provided commit message and branch name
# if [ $# -lt 2 ]; then
#     echo "Usage: $0 <commit_message> <branch_name>"
#     exit 1
# fi

# # Commit message
# commit_message="$1"

# # Branch name
# branch_name="$2"

# # Add all changes
# git add .

# # Commit changes with provided message
# git commit -m "$commit_message"

# # Push changes to specified branch
# git push origin "$branch_name"

# echo "Code successfully pushed to branch $branch_name with commit message: $commit_message"