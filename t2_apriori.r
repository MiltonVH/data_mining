library(arules)
library(data.table)

data <- fread("C:\\Users\\Tetra Pak\\Documents\\MRVH\\mining\\db_csv_\\PERSONA_BDP.csv", sep=",")
data$PEA[is.na(data$PEA)] <- 0
data$POCUPA[is.na(data$POCUPA)] <- 0
data$PEI[is.na(data$PEI)] <- 0

str(data)

reglas <- apriori(data, parameter = list(support=0.2, confidence=0.4 ))

inspect(reglas[0:100])
inspect(reglas[100:200])
inspect(reglas[200:300])
