#SOAL 1 Poisson
#Menghitung rata-rata 3 pelanggan per jam
lambda <- 3
p <- 1-ppois(4, lambda)

p
#Menghitung PMF-nya
x1 <- 0:15
pmf1 <- dpois(x1, lambda)
plot(x1, pmf1, type='h', lwd=3, main='Poisson(λ=3)', xlab='k', ylab='P(X=k)')


#SOAL 2 Hipergeometrik
#Parameter
b_total <- 100
b_merah <- 20
b_bukan_merah <- b_total-b_merah
b_ambil <- 10

# Domain: banyak bola merah yang mungkin terambil
d_b <- seq(from = max(0, b_ambil - b_bukan_merah), to = min(b_ambil, b_merah))

# PMF: P(X = k)
pmf2 <- dhyper(d_b, m = b_merah, n = b_bukan_merah, k = b_ambil)
data.frame(d_b = d_b, P = pmf2)

# Plot PMF
plot(d_b, pmf2, type = "h", lwd = 3,
     main = paste0("Hypergeometric(total=", b_total, ", merah=", b_merah,
                   ", ambil=", b_ambil, ")"),
     xlab = "banyak bola merah yang terambil", ylab = "P(X=k)")


# SOAL 3 BINOMIAL
# Parameter
n_percobaan <- 15      
p_sukses    <- 0.4     
n_simulasi  <- 1000    

# PMF teoretis
x2   <- 0:n_percobaan
pmf3 <- dbinom(x2, size = n_percobaan, prob = p_sukses)

# Simulasi 1000 kali
set.seed(723)
hasil_sim <- rbinom(n_simulasi, size = n_percobaan, prob = p_sukses)

# Histogram simulasi (skala peluang) + PMF teoretis di atasnya
hist(hasil_sim, breaks = seq(-0.5, n_percobaan + 0.5, by = 1), freq = FALSE,
     col = "purple", ylim = c(0, max(pmf3) * 1.1),
     main = "Binomial(n=15, p=0.4): simulasi vs PMF teoretis",
     xlab = "k", ylab = "P(X=k)")
lines(x2, pmf3, type = "h", lwd = 3, col = "gold")
points(x2, pmf3, pch = 19, col = "gold")
legend("topright", legend = c("Simulasi", "PMF teoretis"),
       fill = c("purple", "gold"))

# Pembanding angka
mean(hasil_sim)  
var(hasil_sim)    