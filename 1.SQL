-- Menggunakan database proyek sdg_transport_db
USE sdg_transport_db;

-- 1. Membuat Tabel Induk 1: pengguna
CREATE TABLE IF NOT EXISTS pengguna (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    peran ENUM('admin', 'pengguna') DEFAULT 'pengguna'
);
