#Punto 5
baltimMotor <- subset(SSCC, SSCC$fips == "24510" & SSCC$type == "ON-ROAD")
baltimMotorAGG <- aggregate(Emissions ~ year, baltimMotor, sum)
png("plot5.png")
ggplot(baltimMotorAGG, aes(year, Emissions)) +
  geom_line(col = "steelblue3") +
  geom_point(col = "steelblue3") +
  ggtitle(expression("Baltimore " ~ PM[2.5] ~ "Motor Vehicle Emissions by Year")) +
  xlab("Year") +
  ylab(expression(~PM[2.5]~ "Motor Vehicle Emissions"))
dev.off()