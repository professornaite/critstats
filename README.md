# critstats
Critical statistics data package for use with ICS. This package is in the early stages of development

```{r}
# install this package
install.packages(c("remotes"))
library(remotes)

# installation, method one
devtools::install_github("professornaite/critstats")

# installation, method two
remotes::install_github("professornaite/critstats", force=TRUE)
```

```{r}
# view datasets in this package
data(package='critstats')
```

