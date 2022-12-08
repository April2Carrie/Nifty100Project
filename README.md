# Nifty100Project
Project for STAT605 Group8.

The Nifty-100 is an Indian stock market index that represents the weighted average of top 100 of the largest Indian companies listed on the National Stock Exchange. The goal of the project is to use a time series model to predict the price of the index for a specific day. More concretely, we use Autoregressive Integrated Moving Average(ARIMA) model to build up the price for close prices based on dates. The original data directory has 99 files, each representing all the price information(time, close price, high price, low price, etc) for one company. We extracted all the close prices for each day and used parallel computing to construct 99 models.

The names of contributors are shown in ascending order. They are not sorted by contributions.

## code

Includes codes for:

- [Building R](https://github.com/April2Carrie/Nifty100Project/blob/main/code/build.sub) Contributors: Jingyun Jia and Yizhe Ge

- [Parallel preprocessing](https://github.com/April2Carrie/Nifty100Project/blob/main/code/clean_data.sub) Contributors: Jingyun Jia and Yizhe Ge

- [Automated arima model construction in parallel](https://github.com/April2Carrie/Nifty100Project/blob/main/code/analysis.sub) Contributors: Carrie Deng, Chi Zhang, Jingyun Jia and Yizhe Ge

- [Prediction plot making](https://github.com/April2Carrie/Nifty100Project/blob/main/code/arima.R) Contributors: Crrie Deng, and Chi Zhang

Include results for:

- [Generated plots](https://github.com/April2Carrie/Nifty100Project/tree/main/code/plots)

- [Extracted filenames](https://github.com/April2Carrie/Nifty100Project/blob/main/code/filenames)

## data_use

Include all the [data](https://github.com/April2Carrie/Nifty100Project/tree/main/data_use) after preprocessing.

## Special Thanks

A special thanks for our dear advisor John who helped us with unzipping the large dataset and the installation of R packages "forecast".
