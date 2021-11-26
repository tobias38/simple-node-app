# simple-node-app
Simple Node.js App

## Docker

### Build and run locally

```bash
docker build --no-cache -t tobias38/simple-node-app .
docker run -p 3000:3000 --rm tobias38/simple-node-app
```

<http://localhost:3000>

## Push to Github Registry

Create a Personal Access Token on Github.

```bash
https://github.com/settings/tokens/new?scopes=write:packages

```

Set env variable CR_PAT with that value. Use this to env variable to actually login
```bash
export CR_PAT=...
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin
```

```
docker tag tobias38/simple-node-app ghcr.io/tobias38/simple-node-app:latest
docker push ghcr.io/tobias38/simple-node-app:latest
```

<https://github.com/users/tobias38/packages/container/package/simple-node-app>