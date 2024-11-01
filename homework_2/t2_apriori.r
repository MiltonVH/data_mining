library(arules)
library(data.table)

data <- fread("C:\\Users\\Tetra Pak\\Documents\\MRVH\\mining\\db_csv_\\PERSONA_BDP.csv", sep=",")
data$PEA[is.na(data$PEA)] <- 0
data$POCUPA[is.na(data$POCUPA)] <- 0
data$PEI[is.na(data$PEI)] <- 0

str(data)

reglas <- apriori(data, parameter = list(support=0.2, confidence=0.5 ))

inspect(reglas[0:100])
inspect(reglas[100:200])
inspect(reglas[200:300])
inspect(reglas[300:400])
inspect(reglas[400:500])
inspect(reglas[600:700])
inspect(reglas[700:800])
inspect(reglas[800:900])
inspect(reglas[900:1050])
inspect(reglas[1050:1200])
inspect(reglas[1200:1400])
inspect(reglas[2000:2150])
inspect(reglas[2150:2300])
inspect(reglas[2300:2400])
inspect(reglas[2400:2500])
inspect(reglas[2500:2600])
inspect(reglas[2700:2800])
inspect(reglas[2800:2900])
inspect(reglas[2900:3000])
inspect(reglas[3000:3010])
