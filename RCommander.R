
with(Robos, piechart(tipo, xlab="", ylab="", 
  main="Distribuci�n de los robos a vivienda seg�n tipo. Provincia de Santa Fe. A�o 2020.", col=rainbow_hcl(2),
   scale="percent"))
summary(Robos)
with(Robos, Barplot(tipo, xlab="tipo", ylab="Percent", scale="percent", label.bars=TRUE))
with(Robos, Barplot(agres, xlab="Nivel de agresividad ejercida", ylab="Cantidad de Robos", 
  main="Distribuci�n de los robos seg�n el nivel de agresividad ejercida en el hecho. Provincia de Santa Fe. A�o 2020.",
   label.bars=TRUE))
densityPlot( ~ dinero, data=Robos, bw=bw.SJ, adjust=1, kernel=dnorm, method="adaptive")
with(Robos, qqPlot(dinero, dist="norm", id=list(method="y", n=2, labels=rownames(Robos))))
names(Robos)
Robos$agres_f <- with(Robos, factor(agres, levels=c('Bajo','Medio','Alto'), ordered=TRUE))
with(Robos, Barplot(agres_f, xlab="Nivel de agresividad ejercida", ylab="Cantidad de Robos",
   
  main="Distribuci�n de los robos seg�n el nivel de agresividad ejercida en el hecho. Provincia de Santa Fe. A�o 2020.",
   label.bars=TRUE))
Robos <- within(Robos, {
  dpto <- factor(dpto, labels=c('La Capital','Rosario','Belgrano','Caseros','Castellanos',
  'Constituci�n','Garay','General L�pez','General Obligado','Iriondo','Las Colonias',
  '9 de julio','San Crist�bal','San Javier','San Jeronimo','San Justo','San Lorenzo',
  'San Mart�n','Vera'))
})
with(Robos, Barplot(dpto, xlab="Departamento", ylab="Cantidad de Robos", 
  main="Distribuci�n de los robos seg�n el departamento en que ocurri� el hecho. Provincia de Santa Fe. A�o 2020.",
   label.bars=TRUE, horiz=TRUE))

