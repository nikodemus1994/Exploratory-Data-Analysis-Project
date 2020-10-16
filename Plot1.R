#Punto 1
totalSSCC <- SSCC[, lapply(.SD, sum, na.rm = TRUE), .SDcols = c("Emissions"), by = year]
png(filename='plot1.png')
barplot(totalSSCC$Emissions, names = totalSSCC$year, xlab = "Years", ylab = "Emissions", main = "Emissions over the Years")
dev.off()