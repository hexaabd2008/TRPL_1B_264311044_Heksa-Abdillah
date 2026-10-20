-- 2. Membuat Tabel Induk 2: kendaraan
CREATE TABLE IF NOT EXISTS kendaraan (
    id_kendaraan INT AUTO_INCREMENT PRIMARY KEY,
    id_pengguna INT NOT NULL,
    nama_kendaraan VARCHAR(100) NOT NULL,
    tipe_emisi ENUM('Bensin', 'Listrik', 'Hibrida') NOT NULL,
    nomor_plat VARCHAR(15) NOT NULL UNIQUE,
    FOREIGN KEY (id_pengguna) REFERENCES pengguna(id) ON DELETE CASCADE
);
