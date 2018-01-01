# Transparent Statistics in HCI Guidelines
[![license: CC-BY 4.0 / MIT](https://img.shields.io/badge/license-CC--BY%204.0%20%2F%20MIT-blue.svg)](LICENSE.md)
[![Build Status](https://travis-ci.org/transparentstats/guidelines.svg?branch=master)](https://travis-ci.org/transparentstats/guidelines)


This is the source repostory for the Transparent Statistics in HCI Guidelines. You can read the most recent released 
version of the guidelines [here](https://transparentstats.github.io/guidelines/).

The [master](/transparentstats/guidelines/) branch contains the source for the current "in progress" version of the
guidelines. The source for the most recent released version of the guidelines is on the
[release](/transparentstats/guidelines/tree/release) branch. 


## How to contribute

We welcome contributions in all forms: comments, suggestions, edits, and proposed topics. To learn how to contribute,
read [Contributing to the Guideline](https://github.com/transparentstats/guidelines/wiki/Contributing-to-the-Guidelines)
on the wiki. We also have a [Style Guide](https://github.com/transparentstats/guidelines/wiki/Style-Guide) and a 
contributor [Code of Conduct](https://github.com/transparentstats/guidelines/wiki/Code-of-Conduct).


## How to build the guidelines

1. Open `guidelines.Rproj`. Rstudio won't show necessary tools unless you open the project.

1. Install/update package dependencies:

    ```{r}
    source("https://install-github.me/r-lib/remotes")
    remotes::install_deps(dependencies = TRUE)
    ```

1. A `Build` tab should appear in RStudio. If not, restart RStudio after installing dependencies (the `Build` tab
requires the `bookdown` package), then go to `Menu -> View -> Show Build`.

1. Click the `Build Book` button.

1. The output will be in the `_book` directory.
