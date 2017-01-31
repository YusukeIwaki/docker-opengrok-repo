# docker-opengrok-repo

## How to setup

### Build your own container

```
$ docker pull yusukeiwaki/opengrok-repo
$ docker run -d -it -p 8080:8080 --env REPO_INIT_URL=<repo url> yusukeiwaki/opengrok-repo
```

### Configure your repo

[repo](https://source.android.com/source/using-repo.html) is used for managing source sets to search.
Put `default.xml` (sample is [here](default.xml)) in your GitHub repository and set it to REPO_INIT_URL as below:

```
docker run -it -p 8080:8080 --env REPO_INIT_URL=https://github.com/YourName/your_repo.git yusukeiwaki/opengrok-repo
```

also you can use gist like `--env REPO_INIT_URL https://gist.github.com/d7b049db19fb0286d0ace905a608d562.git`

## Sync source sets

```
$ docker exec -it <container id>
```

then hit the command below:

```
# update_repo
```

## Enjoy!

browse `http://<your hostname>:8080/source/`

![image](https://cloud.githubusercontent.com/assets/11763113/22462899/a0c3e020-e7f2-11e6-885d-487d66f4609d.png)
