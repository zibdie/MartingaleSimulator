# Martingale Betting Simulator

The Martingale Betting System states that if one were to loose a game, they must double their bet to recover their losses. How would this result when played out when put into practice?

The repository demonstrates the results when this betting system is put into practice through scenarios listed in the Jupyter Notebook.

## Docker

If you prefer to run the code through Docker, building and running the container is easy

```
> docker build -t martingale_simulator .
> docker run -p 8888:8888 martingale_simulator
```