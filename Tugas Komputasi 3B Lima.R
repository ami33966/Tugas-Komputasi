# SOAL 1 Eksponensial
rata_tunggu <- 5                  
laju_tunggu <- 1 / rata_tunggu    

(p_soal1 <- pexp(5, rate = laju_tunggu, lower.tail = FALSE))   
1 - pexp(5, rate = laju_tunggu)                                

# Plot PDF
x_tunggu <- seq(0, 30, by = 0.1)
y_tunggu <- dexp(x_tunggu, rate = laju_tunggu)
plot(x_tunggu, y_tunggu, type = "l", col = "#5A1827", lwd = 2,
     main = "PDF Eksponensial (rate=0.2)", xlab = "x (menit)", ylab = "f(x)")
abline(v = 5, col = "#8A9A5B", lty = 2)


# SOAL 2 Seragam
set.seed(2625)
n_simulasi  <- 1000
batas_bawah <- 0     
batas_atas  <- 20   

# Ragam teoretis: (b - a)^2 / 12
(ragam_teoretis <- (batas_atas - batas_bawah)^2 / 12)   

# Generate sampel + pembanding
waktu_tunggu <- runif(n_simulasi, min = batas_bawah, max = batas_atas)
var(waktu_tunggu)    

# Nilai density / CDF / quantile contoh
d_values <- dunif(c(0, 10, 20), min = batas_bawah, max = batas_atas)
p_values <- punif(c(0, 10, 20), min = batas_bawah, max = batas_atas)
q_values <- qunif(c(0.25, 0.5, 0.75), min = batas_bawah, max = batas_atas)

# Plot: histogram sampel + overlay PDF teoretis
hist(waktu_tunggu, breaks = 30, probability = TRUE,
     main = "Histogram sampel U(0,20) dengan PDF teoretis",
     xlab = "waktu kedatangan kereta (menit setelah 07.00)")
curve(dunif(x, min = batas_bawah, max = batas_atas),
      from = batas_bawah, to = batas_atas, add = TRUE, lwd = 2)


# SOAL 3 Eksponensial
rata_umur  <- 10                  
laju_rusak <- 1 / rata_umur       

(p_soal3 <- pexp(5, rate = laju_rusak))   # 0.3934693

# Plot PDF
x_umur <- seq(0, 50, by = 0.1)
y_umur <- dexp(x_umur, rate = laju_rusak)
plot(x_umur, y_umur, type = "l", col = "#8A9A5B", lwd = 2,
     main = "PDF Eksponensial (rate=0.1)", xlab = "x (tahun)", ylab = "f(x)")
abline(v = 5, col = "#5A1827", lty = 2)


# SOAL 4 Normal 
rata_berat <- 250    
sd_berat   <- 5      

(p_underweight <- pnorm(240, mean = rata_berat, sd = sd_berat))   # 0.02275013

# Plot PDF + garis batas underweight
curve(dnorm(x, mean = rata_berat, sd = sd_berat),
      from = rata_berat - 4*sd_berat, to = rata_berat + 4*sd_berat,
      col = "#5A1827", lwd = 2,
      main = "PDF Normal (mu=250, sigma=5)", xlab = "berat (gram)", ylab = "f(x)")
abline(v = 240, col = "#8A9A5B", lty = 2)