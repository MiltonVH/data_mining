library(arules)
library(data.table)

datos <- fread("C:\\Users\\Tetra Pak\\Documents\\MRVH\\mining\\db_csv_\\MIGRACION_BDP.csv", sep=",")
datos$MUNICIPIO <- format(datos$MUNICIPIO, scientific=FALSE)
datos$PEI5 <- format(datos$PEI5, scientific=FALSE)
datos <- subset(datos, PEI5!=9999)

cluster <- kmeans(datos, centers=4)

library(ggplot2)

ggplot(datos, aes(x = DEPARTAMENTO, y = PEI4, color = as.factor(cluster$cluster)))+
  geom_point()+
  geom_point(data = as.data.frame(cluster$centers), aes(x=DEPARTAMENTO, y = PEI4), color = "black", size=4, shape=17)+
  labs(title = "DEPARTEMENTO VS EDAD")+
  theme_minimal()

