# Bedingungen
data$Cond_factor <- factor(data$Cond, levels = c(1, 2), labels = c("Handicap", "Control"))

# Berechnung des Anteilwertes
data$percent <- data$Correct / data$Attempted

# Mittelwerte
mean(data$percent)
mean(data$percent[data$Cond_factor == "Handicap"])
mean(data$percent[data$Cond_factor == "Control"])

# Standardabweichungen
sd(data$percent)
sd(data$percent[data$Cond_factor == "Handicap"])
sd(data$percent[data$Cond_factor == "Control"])
boxplot(Attempted~Cond, data=data)
t.test(Attempted~Condition, data=daten, var.equal=TRUE)
m1 <- mean(daten$Attempted[daten$Condition == "Handicap"])
m2 <- mean(daten$Attempted[daten$Condition == "Control"])
s1 <- sd(daten$Attempted[data$Cond_factor == "Handicap"])
s2 <- sd(daten$Attempted[data$Cond_factor == "Control"])
t <- (m1-m2)/sqrt((s1^2/32) + (s2^2/29))
t.test(Attempted~Condition, data=daten)


# Boxplot
boxplot(data$percent~data$Cond_factor)

# Student t-Test mit Formel
t.test(percent~Cond, data = data, var.equal = TRUE)
t.test(data$percent~data$Cond, var.equal = TRUE)

# Welch t-Test mit Formel
t.test(percent~Cond, data = data)

# resample
library(coin)
result <- oneway_test(percent~Cond_factor, 
                      data=data, 
                      distribution=approximate(B=9999))

