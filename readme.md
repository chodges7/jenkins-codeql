# Jenkins CodeQL

## Local Dev

### Required Dependencies
- Docker

### Standup Jenkins
1. Run the Docker compose file: `docker compose up --build -d`.
2. Open up the logs of the container: `docker compose logs -f`.
3. Watch for a token between two lines of ***'s.
4. Use that token to setup an admin Jenkins user.

### Add a Jenkins Job
1. Create a pipeline project.
2. Specify a GitHub project in the general settings.
3. Define the pipeline script to be from SCM (Source Control Management).
4. Change the default branch specifier to `*/main`.
5. Hit the `build now` button!
