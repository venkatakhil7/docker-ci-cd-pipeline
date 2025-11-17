CI/CD Pipeline with Docker & GitHub Actions

1) OBJECTIVE OF ASSIGNMENT:
The objective of this assignment was to automate a build–test–push pipeline using Docker and GitHub Actions. The pipeline needed to:

   a)Trigger on commits to the main branch
   b)Build and push Docker images to Docker Hub
   c)Run automated tests in a containerized environment
   d)Tag images with both latest and build number

2) HOW I APPROACHED:
   
  a)Repository Setup
    •Created a GitHub repository docker-ci-cd-pipeline.
    •Added a Dockerfile and a simple test script (tests/test_app.sh).
  b)Workflow Definition
    •Added a GitHub Actions workflow file .github/workflows/ci-cd.yml.
    •Configured the workflow to trigger on every push to the main branch.
  c)Docker Hub Authentication
   •Generated a new Docker Hub Personal Access Token (PAT) with Read, Write, Delete scopes.
   •Stored credentials securely in GitHub Secrets (DOCKERHUB_USERNAME, DOCKERHUB_TOKEN).

  d)Build and Test Stage
    •Configured the workflow to build a temporary image (ci-test).
    •Ran containerized tests using the script to validate the application before pushing.

  e)Push Stage
    •Used docker/build-push-action@v5 with push: true.
    •Tagged images with both latest and build-${{ github.run_number }}.
    •Verified successful push in the workflow logs.

  f)Verification
    •Checked Docker Hub repository:https://hub.docker.com/repository/docker/akhilvenkat/docker-ci-cd-pipeline/general
    •Confirmed the image was pushed 18 hours ago with correct tags (build-5 and latest).
    •Captured screenshots of the Actions tab (successful run) and Docker Hub page (image tags).
   


