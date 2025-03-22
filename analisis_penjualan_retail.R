
# Analisis Penjualan Retail Sederhana

library(dplyr)
library(ggplot2)

# Contoh data penjualan
data_penjualan <- data.frame(
  kategori = c("Elektronik", "Fashion", "Makanan", "Elektronik", "Fashion"),
  jumlah = c(100, 150, 200, 130, 170),
  bulan = c("Januari", "Januari", "Januari", "Februari", "Februari")
)

# Visualisasi tren penjualan
ggplot(data_penjualan, aes(x = bulan, y = jumlah, fill = kategori)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Tren Penjualan per Kategori", x = "Bulan", y = "Jumlah Terjual")
