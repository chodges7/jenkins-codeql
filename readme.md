# Jenkins CodeQL

## Local Dev

### Required Dependencies
- Docker

### Standup Jenkins
1. Run the Docker compose file: `docker compose up --build -d`.
2. Open up the logs of the container: `docker compose logs -f`.
3. Watch for a token between two lines of ***'s.
4. Use that token to setup an admin Jenkins user.