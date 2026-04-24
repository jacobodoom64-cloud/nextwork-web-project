wget https://archive.apache.org/dist/maven/maven-3/3.5.2/binaries/apache-maven-3.5.2-bin.tar.gz
sudo tar -xzf apache-maven-3.5.2-bin.tar.gz -C /opt
echo "export PATH=/opt/apache-maven-3.5.2/bin:$PATH" >> ~/.bashrc
source ~/.bashrc
sudo dnf install -y java-1.8.0-amazon-corretto-devel
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto.x86_64
export PATH=/usr/lib/jvm/java-1.8.0-amazon-corretto.x86_64/jre/bin/:$PATH
mvn-v
mvn -v
java -version
mvn archetype:generate    -DgroupId=com.nextwork.app    -DartifactId=nextwork-web-project    -DarchetypeArtifactId=maven-archetype-webapp    -DinteractiveMode=false
sudo dnf update -y
sudo dnf install git -y
git init
pwd
git remote add origin https://github.com/jacobodoom64-cloud/nextwork-web-project.git
git add . 
git commit -m "Updated index.jsp with new content"
git push -u origin master
git pull origin main --allow-unrelated-histories
git push origin main
find . -size +100M
echo "path/to/largefile" >> .gitignore
git rm --cached path/to/largefile
git add .
git commit -m "Remove large files"
git push origin main
find . -size +100M
echo ".vscode-server/" >> ~/.gitignore
git rm -r --cached .vscode-server
git add .
git commit -m "Remove .vscode-server from tracking"
git push origin main
find . -size +100M
git branch
git status
git push -u origin master
echo ".vscode-server/" >> .gitignore
git add .gitignore
git commit -m "Add .vscode-server to gitignore"
git filter-branch --force --index-filter   "git rm -r --cached --ignore-unmatch .vscode-server"   --prune-empty --tag-name-filter cat -- --all
rm -rf .git/refs/original/
git reflog expire --expire=now --all
git gc --prune=now --aggressive
git push -u origin master --force
# 1. Remove the large file from git tracking (but keep it on disk)
git rm -r --cached .vscode-server/
# 2. Add .vscode-server to .gitignore so it's never tracked again
echo ".vscode-server/" >> .gitignore
# 3. Commit the removal
git add .gitignore
git commit -m "Remove .vscode-server from tracking, add to .gitignore"
# 4. Push again
git push -u origin master
# 1. Install git-filter-repo (faster and safer than filter-branch)
pip install git-filter-repo
git push -u origin master
pip install git-filter-repo
# 1. Remove .vscode-server from ALL git history
git filter-branch --force --index-filter   "git rm -rf --cached --ignore-unmatch .vscode-server/"   --prune-empty --tag-name-filter cat -- --all
git stash
git filter-branch --force --index-filter   "git rm -rf --cached --ignore-unmatch .vscode-server/"   --prune-empty --tag-name-filter cat -- --all
# 3. Clean up refs
git for-each-ref --format="delete %(refname)" refs/original | git update-ref --stdin
git reflog expire --expire=now --all
git gc --prune=now --aggressive
# 4. Force push
git push origin master --force
# 5. Restore your stashed changes
git stash pop
# Stage everything first
git add .
# Then commit temporarily
git commit -m "temp commit before history rewrite"
git config --global user.name "Jacob"
git config --global user.email jacobodoom64@gmail.com
