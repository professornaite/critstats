library(usethis)
library(readr)

# raw data files to process in data-raw/
files <- list.files("data-raw/new-data", pattern = "\\.csv$", full.names = TRUE)
data_names <- tools::file_path_sans_ext(basename(files))

# current data objects already saved in data/
existing_files <- tools::file_path_sans_ext(dir("data", pattern = "\\.rda$"))

for (i in seq_along(files)) {
  if (data_names[i] %in% existing_files) next # skip if already processed
  df <- read_csv(files[i])
  assign(data_names[i], df)
  use_data(list = data_names[i], overwrite = FALSE)
}
