library("qcc")
datos<-read.delim("clipboard",col.names=c("Placa","Cant Defectos"))#cargamos datos

promedio_defect<- mean(datos$Cant.Defectos)#calculamos el promedio para el punto A

frecuencia<-table(datos$Cant.Defectos) #calculamos la tabla con las frecuencias
porcentajes <- prop.table(frecuencia) * 100 #calculamos los porcentajes de las frecuencias
datos_con_porcentajes <- cbind(frecuencia, porcentajes) #unimos las tablas
datos_con_porcentajes

#hacemos 2 graficos
barplot(frecuencia, main="Frecuencia de fallas por tabla", ylab="Cantidad de tablas", xlab="Numero de fallas", col="blue")

boxplot(datos$Cant.Defectos, main="Boxplot cantidad de defectos por tabla",ylab="Cantidad defectos", col="orange")

#calculamos 2 medidas de posicion
q1<-quantile(datos$Cant.Defectos,0.25)
q3<-quantile(datos$Cant.Defectos, 0.75)

#calculamos 2 medidas d desviacion
varianza<-var(datos$Cant.Defectos)
varianza


desviacion<-sd(datos$Cant.Defectos)
desviacion
