library(readxl)
df <- read_excel("C:/Users/62811/OneDrive - Bina Nusantara/Regression Analysis Semester 5/AOL/dataset_aol_kel1_2022.xlsx")
View(df)                                                                                     

# Boxplot
boxplot(df$persentase_penduduk_miskin) # No Outlier
boxplot(df$jumlah_pengeluaran_per_kapita)
boxplot(df$persentase_tingkat_pengangguran_terbuka)
boxplot(df$kepadatan_penduduk_per_km)
boxplot(df$indeks_kesehatan) # No Outlier
boxplot(df$indeks_pendidikan) # No Outlier
boxplot(df$persentase_angka_buta_huruf)

model <- lm(persentase_penduduk_miskin ~ jumlah_pengeluaran_per_kapita + persentase_tingkat_pengangguran_terbuka + kepadatan_penduduk_per_km + indeks_kesehatan + indeks_pendidikan + persentase_angka_buta_huruf, data = df)
summary(model)

cooks.distance(model) # Outlier tidak berpengaruh Ci < 1
dffits(model) # Tidak ada influential points
hatvalues(model) # 0.518 (ada 1 yg high leverage di data ke-12)

plot(fitted(model), error)
abline(0, 0)

qqnorm(error)
qqline(error)

error <- resid(model)
error

library(nortest)
lillie.test(error)
# error berdistribusi normal

library(lmtest)
bptest(model)
# error terjadi homo

dwtest(model)
# error tidak terjadi autokorelasi

install.packages("car")
library(car)
vif(model)
# semua variable x tidak bersifat multikollinear

install.packages("robustbase")
library(robustbase)
model_rob <- lmrob(persentase_penduduk_miskin ~ jumlah_pengeluaran_per_kapita + persentase_tingkat_pengangguran_terbuka + kepadatan_penduduk_per_km + indeks_kesehatan + indeks_pendidikan + persentase_angka_buta_huruf, data = df)
summary(model_rob)
