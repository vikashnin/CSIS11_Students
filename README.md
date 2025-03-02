# CSIS11 Students

Repository for students to exchange homework with the instructor. 

### Important
1. **Please make sure your version of this repository on GitHub is private and is accessible by only the instructor and you.**
2. **Please do NOT make changes or add files to the Instructor folder, as this is where you will be able to download new versions of files from the instructor**

## Installation
   1. Login to GitHub
   2. On this repository, click the **Fork** button in the top-right corner of the page
   3. **Verify** your fork:
    - You'll be automatically redirected to your new forked repository
    - The URL will now show your username instead of the *lkoepsel*
    - You'll see an indication that it's "forked from [*this repository*]" under the repository name
   4. **Clone** your fork locally:
   ```bash
   git clone https://github.com/student-username/CSIS11_Students.git
   ```
   - Add this repository as upstream:
   ```bash
   git remote add upstream https://github.com/your-username/CSIS11_Students.git
   ```

4. Ongoing Operations:

   a. When You Add New Content:
   - Push changes to your ```main``` branch
   - Students sync with your updates:
   ```bash
   git fetch upstream
   git merge upstream/main
   ```

   b. For Student Work:
   - Students create assignment-specific branches:
   ```bash
   git checkout -b assignment1
   ```
   - They commit and push to their fork:
   ```bash
   git push origin assignment1
   ```

5. Best Practices:
   - Create clear assignment folders with README files
   - Include starter code in assignment folders
   - Use assignment-specific branches for student submissions
   - Implement clear naming conventions for student work
