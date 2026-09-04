#Vector Numeric -> angka secara umum, termasuk desimal
nilai_uts <- c(90.3, 73.5, 85.3, 77.5, 69.9)
nilai_uts
typeof(nilai_uts) #fungsi typeof adalah kita tahu bagaimana R menyimpan data ini secara teknis 
class(nilai_uts)  #fungsi class adalah kita tahu bagaimana R memperlakukan data yang kita berikan

#Vector Integer -> khusus bilangan bulat
jumlah_mahasiswa <- c(10L, 35L, 8L, 25L, 15L)
jumlah_mahasiswa
typeof(jumlah_mahasiswa)
class(jumlah_mahasiswa)

#Vector Logical -> untuk menunjukkan suatu kondisi benar atau salah, dan untuk penyaringan maupun pemilihan data
kehadiran_mahasiswa <- c(TRUE, FALSE, FALSE, TRUE, TRUE)
kehadiran_mahasiswa

#Matrix 4x4
m <- matrix(sample(1 : 50, 16), nrow = 4, ncol = 4, byrow = TRUE) 
m

#Array 4 Dimensions 
a <- array(sample(1 : 100, 81, replace = TRUE), dim = c (3,3,3,3))
a

#Data Frame 
nama_mahasiswa <- c("Velma", "Scoobydoo", "Daphne", "Fred", "Shaggy")
nilai_uts <- c(90.3, 73.5, 85.3, 77.5, 69.9)
kehadiran_mahasiswa <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
lulus <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
data_mahasiswa <- data.frame(nama_mahasiswa,
                             nilai_uts,
                             kehadiran_mahasiswa,
                             lulus)
data_mahasiswa

#List
v_row <- c(30, 60, 90, 20)
v_col <- matrix(c(40, 80, 30, 70), ncol = 1)
matriks_4x4 <- matrix(sample(26 : 93, 16), nrow = 4, ncol = 4)
data_mahasiswa <- data.frame(
  nama_mahasiswa = c("Peter", "Susan", "Edmund", "Lucy"),
  nilai_uas = c(92.5, 95, 90, 90.2),
  lulus_matakuliah = c(TRUE, TRUE, TRUE, TRUE),
  kehadiran_mahasiswa = c(FALSE, FALSE, FALSE, TRUE)
  )
nested_list <- list(matriks_saya <- matrix(sample(1 : 50, 16), nrow = 4, ncol = 4, byrow = TRUE),
                 aray_saya <- array(sample(39 : 93, 16, replace = TRUE), dim = c (2,2,2,2)),
                data_anak <- data.frame(
                  nama_anak = c("Harry", "Ron", "Hermione"),
                  umur_anak = c(7, 5, 9),
                  status_sekolah = c(TRUE, FALSE, TRUE),
                  imunisasi_lengkap = c(TRUE, TRUE, TRUE)),
                vektor_row <- c (10, 30, 80, 60)
                           )
my_list <- list(v_row,
                v_col,
                matriks_4x4,
                data_mahasiswa,
                nested_list)
my_list