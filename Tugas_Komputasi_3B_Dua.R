#Tugas Komputasi statistika
#Load Data Iris
data (iris)

#1. Tampilkan data Sepal.Length
iris$Sepal.Length

#2. Tipe data tiap kolom
str(iris)
sapply(iris, class)

#3. Buat variabel trurunan dari Sepal.Width
iris$turunan <- ifelse(iris$Sepal.Width > 3, "Besar", "Kecil")

#4. Ubah nama variabel turunan menjadi "sepal"
names(iris)[names(iris) == "turunan"] <- "sepal"

#5. Ambil data dengan sepal = "Besar" dari spesies
data_virginica_besar <- iris[iris$sepal == "Besar" & iris$Species == "virginica",]
data_virginica_besar

#6. Cek jumlah spesies dalam data
table(iris$Species)

#7. Pecah data iris menjadi 3 data frame per spesies
setosa_df <- iris[iris$Species == "setosa", ]
versicolor_df <- iris[iris$Species == "versicolor", ]
virginica_df <- iris[iris$Species == "virginica", ]

#8. Urutkan tiap data frame berdasarkan Sepal.Width
setosa_df <- setosa_df[order(setosa_df$Sepal.Width), ]
versicolor_df <- versicolor_df[order(versicolor_df$Sepal.Width), ]
virginica_df <- virginica_df[order(virginica_df$Sepal.Width), ]