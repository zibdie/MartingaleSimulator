# Martingale Betting Simulator

The Martingale Betting System states that if one were to loose a game, they must double their bet to recover their losses. How would this result when played out when put into practice?

The repository demonstrates the results when this betting system is put into practice through scenarios listed in the Jupyter Notebook.

## Docker

If you prefer to run the code through Docker, building and running the container is easy

```
> docker build -t martingale_simulator .
> docker run -p 8223:8223 martingale_simulator
```

### DockerHub

If you wish to have the latest version, you can just pull it from DockerHub

```
docker run -p 8223:8223 zibdie/martingale_simulator:latest
```