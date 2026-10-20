sql
-- Menggunakan database proyek sdg_transport_db
USE sdg_transport_db;[cite: 3]

-- 1. Membuat Tabel Induk 1: pengguna
CREATE TABLE IF NOT EXISTS pengguna (
    id INT AUTO_INCREMENT PRIMARY KEY,[cite: 3]
    nama VARCHAR(100) NOT NULL,[cite: 3]
    email VARCHAR(100) NOT NULL UNIQUE,[cite: 3]
    peran ENUM('admin', 'pengguna') DEFAULT 'pengguna'[cite: 3]
);
