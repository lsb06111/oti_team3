# OTI Team 3 Project

## Description
This is the repository for the OTI Team 3 project. This README provides instructions for setting up the project and collaborating using Git.

## Getting Started

### Prerequisites
Before you begin, ensure you have the following installed:
*   **Java Development Kit (JDK)** (e.g., JDK 11 or later)
*   **Eclipse IDE for Enterprise Java and Web Developers**
*   **Git**

### Cloning the Repository
To get a local copy of the project, open your terminal or Git Bash and run the following command:

```bash
git clone https://github.com/lsb06111/oti_team3.git
```

Navigate into the cloned directory:

```bash
cd oti_team3
```

### Importing into Eclipse
1.  Open Eclipse.
2.  Go to `File` > `Import...`.
3.  Select `General` > `Existing Projects into Workspace` and click `Next`.
4.  Click `Browse...` next to "Select root directory" and navigate to the `oti_team3` folder you just cloned.
5.  Ensure the project is checked under "Projects" and click `Finish`.

## Git Workflow

### Pulling Latest Changes
Before starting work or pushing your changes, always pull the latest changes from the remote repository to avoid merge conflicts:

```bash
git pull origin main
```

### Making and Committing Changes
1.  Make your desired changes to the project files.
2.  Stage your changes. You can stage all modified files with:
    ```bash
    git add .
    ```
    Or stage specific files:
    ```bash
    git add path/to/your/file.java
    ```
3.  Commit your staged changes with a descriptive message:
    ```bash
    git commit -m "Your descriptive commit message here"
    ```

### Pushing Changes
After committing your changes, push them to the remote repository:

```bash
git push origin main
```

If you encounter issues, ensure you have pulled the latest changes before pushing.
