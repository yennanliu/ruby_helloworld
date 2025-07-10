## Build

- build docker file

```bash

docker build -f Dockerfile_dev -t ror-tutorial .

docker run -it -p 80:80 ror-tutorial

docker run -p 80:80 ror-tutorial


#------------


# 1. Stop any running containers
docker stop $(docker ps -q)

# 2. Remove the old image
docker rmi ror-tutorial

# 3. Rebuild the image
docker build -f Dockerfile_dev -t ror-tutorial .

# 4. Run the container with proper port mapping and volume mounting
docker run -it -p 3000:3000 -v $(pwd):/app ror-tutorial

```

## Run

```bash

# run app from code
rails server
```

- http://127.0.0.1:3000


## Ref

- https://dockerize.io/guides/ruby-on-rails-guide