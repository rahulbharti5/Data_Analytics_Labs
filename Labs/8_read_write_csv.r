library(readr)
library(readxl)
library(writexl)


# CSV
df_csv <- read_csv("./Practicals/data/house_price.csv")
write_csv(df_csv, "./Practicals/output.csv")

# XLS
df_xls <- read_excel("./Practicals/data/house_price.xlsx")
write_xlsx(df_xls, "./Practicals/output.xlsx")

# TXT
df_txt <- read.table("./Practicals/data/data.txt", header = TRUE)
write.table(df_txt, "./Practicals/output.txt", sep = "\t", row.names = FALSE)
