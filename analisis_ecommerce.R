
# Analisis Data E-Commerce Sederhana

# Load library
library(dplyr)
library(ggplot2)

# Contoh dataset e-commerce
data_ecommerce <- data.frame(
  order_id = 1:10,
  customer_id = c(101,102,103,104,105,106,107,108,109,110),
  product_category = c("Elektronik", "Fashion", "Makanan", "Elektronik", "Fashion",
                       "Makanan", "Elektronik", "Fashion", "Makanan", "Elektronik"),
  order_value = c(500000, 250000, 100000, 700000, 300000, 150000, 650000, 280000, 120000, 600000),
  order_date = as.Date(c("2025-01-05", "2025-01-06", "2025-01-06", "2025-01-07", "2025-01-08",
                         "2025-01-09", "2025-01-10", "2025-01-11", "2025-01-11", "2025-01-12"))
)

# Total order per kategori produk
total_per_kategori <- data_ecommerce %>%
  group_by(product_category) %>%
  summarise(total_penjualan = sum(order_value))

# Visualisasi total penjualan
ggplot(total_per_kategori, aes(x = product_category, y = total_penjualan, fill = product_category)) +
  geom_bar(stat = "identity") +
  labs(title = "Total Penjualan per Kategori Produk", x = "Kategori Produk", y = "Total Penjualan (Rp)") +
  theme_minimal()
