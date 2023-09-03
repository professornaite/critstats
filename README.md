# critstats
Critical statistics data package for use with ICS. This package is in the early stages of development

Two methods two install this package:
```{r}
# installation, method one
devtools::install_github("professornaite/critstats")
```

```{r}
# installation, method two
install.packages("remotes")
library(remotes)
remotes::install_github("professornaite/critstats", force=TRUE)
```

```{r}
# view datasets in this package
data(package='critstats')
```

