# Panggil dataset (bawaan R)
data(airquality)
str(airquality)   # intip struktur kolomnya

# 1. Histogram + density Wind -> lihat bentuk sebaran (simetris/skew)
hist(airquality$Wind, probability = TRUE,
     xlab = "Kecepatan angin (mph)", main = "Histogram & Density - Wind")
lines(density(airquality$Wind), lwd = 2)

# 2. Boxplot Wind -> lihat median, sebaran, dan outlier
boxplot(airquality$Wind, horizontal = TRUE,
        main = "Boxplot - Wind", xlab = "Kecepatan angin (mph)")

# 3. Stem-and-leaf Wind -> sebaran data tapi nilai aslinya tetap kelihatan
stem(airquality$Wind)

# 4. Scatterplot Wind vs Temp -> cek ada hubungan/pola antar dua variabel
plot(Temp ~ Wind, data = airquality, pch = 16,
     xlab = "Kecepatan angin (mph)", ylab = "Suhu (F)",
     main = "Scatterplot: Wind vs Temp")