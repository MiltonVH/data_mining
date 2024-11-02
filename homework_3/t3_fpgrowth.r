library(arules)
library(data.table)

data <- fread("C:\\Users\\Tetra Pak\\Documents\\MRVH\\mining\\db_csv_\\MIGRACION_BDP.csv", sep=",")
data$MUNICIPIO <- format(data$MUNICIPIO, scientific=FALSE)
data$PEI5 <- format(data$PEI5, scientific=FALSE)

reglas <- fim4r(data, method = "fpgrowth", target = "rules", support = .2, confidence = .5)
reglasframe <- as(reglas, "data.frame")

