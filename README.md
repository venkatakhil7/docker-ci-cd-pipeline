Objective of Assignment :
The objective of this assignment is to implement a CI/CD pipeline using GitHub Actions that automates the process of building, testing, and pushing Docker images. On every commit to the main branch, the pipeline should:
a)Build a Docker image of the application.
b)Run automated tests inside a containerized environment.
c)Push the image to Docker Hub with tags latest and a unique build number.
d)This ensures consistent, repeatable deployments and demonstrates integration of DevOps practices.

Approach of Assignment:

a)Repository Setup: Creating a GitHub repository named docker-ci-cd-pipeline and add application code, Dockerfile, and test scripts.
b)Docker Hub Integration: Creating a Docker Hub repository and generate a personal access token for secure authentication.
c)GitHub Secrets: Adding DOCKERHUB_USERNAME and DOCKERHUB_TOKEN as repository secrets for login in workflows.
d)Workflow Definition: Writting a GitHub Actions workflow (ci-cd.yml) to automate build, test, and push steps.
e)Triggering: Configure the workflow to run on commits to the main branch.
f)Verification: Check GitHub Actions logs, confirm Docker Hub image tags, and run the container locally to validate.

For Triggering Github actions workflow:
Here i am adding line 

"Trigger CI/CD run"
