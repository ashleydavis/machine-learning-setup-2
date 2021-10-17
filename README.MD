# Machine learning setup 
## Version 2, now using Docker Compose

This setup has Python (via Anaconda), Pandas, Tensorflow, Keras, Autokeras and Jupyter Notebook installed.

You need [Docker](https://www.docker.com/products/docker-desktop) installed to run this.

This repo supercedes [my previous ML setup](https://github.com/ashleydavis/machine-learning-setup).

## Start the environment:

```bash
docker compose up --build
```

## Shell into the ML container:

```bash
docker exec -it machine_learning_2 bash
```

## Access shared library from within the container:

The directory of this Git respository is automatically shared into the container under `/shared`, you can access it from the terminal like this:

```bash
cd /shared
ls
```

## Access Jupyter notebook from host OS:

Point your browser at http://localhost:8888/.

## Shutdown the environment:

```bash
docker compose down
```

