-- 3. Membuat Tabel Transaksi / Anak: perjalanan
CREATE TABLE IF NOT EXISTS perjalanan (
    id_perjalanan INT AUTO_INCREMENT PRIMARY KEY,
    id_pengguna INT NOT NULL,
    id_kendaraan INT NOT NULL,
    lokasi_awal VARCHAR(150) NOT NULL,
    lokasi_tujuan VARCHAR(150) NOT NULL,
    tarif DECIMAL(10, 2) NOT NULL,
    status_perjalanan ENUM('berlangsung', 'selesai', 'dibatalkan') DEFAULT 'berlangsung',
    FOREIGN KEY (id_pengguna) REFERENCES pengguna(id) ON DELETE CASCADE,
    FOREIGN KEY (id_kendaraan) REFERENCES kendaraan(id_kendaraan) ON DELETE CASCADE
);
