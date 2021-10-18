
with(Robos, piechart(tipo, xlab="", ylab="", 
  main="Distribución de los robos a vivienda según tipo. Provincia de Santa Fe. Año 2020.", col=rainbow_hcl(2),
   scale="percent"))
summary(Robos)
with(Robos, Barplot(tipo, xlab="tipo", ylab="Percent", scale="percent", label.bars=TRUE))
with(Robos, Barplot(agres, xlab="Nivel de agresividad ejercida", ylab="Cantidad de Robos", 
  main="Distribución de los robos según el nivel de agresividad ejercida en el hecho. Provincia de Santa Fe. Año 2020.",
   label.bars=TRUE))
densityPlot( ~ dinero, data=Robos, bw=bw.SJ, adjust=1, kernel=dnorm, method="adaptive")
with(Robos, qqPlot(dinero, dist="norm", id=list(method="y", n=2, labels=rownames(Robos))))
names(Robos)
Robos$agres_f <- with(Robos, factor(agres, levels=c('Bajo','Medio','Alto'), ordered=TRUE))
with(Robos, Barplot(agres_f, xlab="Nivel de agresividad ejercida", ylab="Cantidad de Robos",
   
  main="Distribución de los robos según el nivel de agresividad ejercida en el hecho. Provincia de Santa Fe. Año 2020.",
   label.bars=TRUE))
Robos <- within(Robos, {
  dpto <- factor(dpto, labels=c('La Capital','Rosario','Belgrano','Caseros','Castellanos',
  'Constitución','Garay','General López','General Obligado','Iriondo','Las Colonias',
  '9 de julio','San Cristóbal','San Javier','San Jeronimo','San Justo','San Lorenzo',
  'San Martín','Vera'))
})
with(Robos, Barplot(dpto, xlab="Departamento", ylab="Cantidad de Robos", 
  main="Distribución de los robos según el departamento en que ocurrió el hecho. Provincia de Santa Fe. Año 2020.",
   label.bars=TRUE, horiz=TRUE))

