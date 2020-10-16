# Punto 4
coalSCC <- grepl("coal", SCC$Short.Name, ignore.case = T)
combustionSCC <- SCC[coalSCC, SCC]
combustionSSCC <- SSCC[SSCC[,SCC] %in% combustionSCC]
png("plot4.png")
ggplot(combustionSSCC,aes(x = factor(year),y = Emissions/10^5)) +
  geom_bar(stat="identity", fill ="lightblue", width=0.75) +
  labs(x="year", y=expression("Total PM"[2.5]*" Emission (10^5 Tons)")) + 
  labs(title=expression("PM"[2.5]*" Coal Combustion Source Emissions Across US from 1999-2008"))
dev.off()