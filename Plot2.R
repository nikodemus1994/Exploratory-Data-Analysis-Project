#Punto 2
baltim <- subset(SSCC, SSCC$fips=="24510")
totalBaltim <- aggregate(Emissions ~ year, baltim, sum)
png(filename='plot2.png')
barplot(totalBaltim$Emissions, names = totalBaltim$year, xlab = "Years", ylab= expression("Total Baltimore"~ PM [2.5] ~ "Emissions"), main = expression("Total Baltimore" ~ PM[2.5] ~ "Emissions by Year") )
dev.off()