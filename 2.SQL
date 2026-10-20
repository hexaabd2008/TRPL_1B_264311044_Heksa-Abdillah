-- 2. Membuat Tabel Induk 2: kendaraan
CREATE TABLE IF NOT EXISTS kendaraan (
    id_kendaraan INT AUTO_INCREMENT PRIMARY KEY,[cite: 3]
    id_pengguna INT NOT NULL,[cite: 3]
    nama_kendaraan VARCHAR(100) NOT NULL,[cite: 3]
    tipe_emisi ENUM('Bensin', 'Listrik', 'Hibrida') NOT NULL,[cite: 3]
    nomor_plat VARCHAR(15) NOT NULL UNIQUE,[cite: 3]
    FOREIGN KEY (id_pengguna) REFERENCES pengguna(id) ON DELETE CASCADE[cite: 3]
);
