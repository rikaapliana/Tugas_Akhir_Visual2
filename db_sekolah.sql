-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jun 2023 pada 16.03
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hubungan`
--

CREATE TABLE `tbl_hubungan` (
  `id` int(10) NOT NULL,
  `siswa_id` int(10) DEFAULT NULL,
  `ortu_id` int(10) DEFAULT NULL,
  `status_hub_anak` enum('kandung','tiri') DEFAULT NULL,
  `keterangan` enum('ayah','ibu','paman') DEFAULT NULL,
  `status_ortu` enum('alm','hidup') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_hubungan`
--

INSERT INTO `tbl_hubungan` (`id`, `siswa_id`, `ortu_id`, `status_hub_anak`, `keterangan`, `status_ortu`) VALUES
(3, 1, 1, 'kandung', 'ayah', 'hidup');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id` int(10) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `jurusan` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id`, `nama`, `jurusan`) VALUES
(1, 'XII TKJ 1', 'Teknik Komputer Jaringan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ortu`
--

CREATE TABLE `tbl_ortu` (
  `id` int(13) NOT NULL,
  `nik` int(13) DEFAULT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `pendidikan` varchar(10) DEFAULT NULL,
  `pekerjaan` varchar(25) DEFAULT NULL,
  `telp` int(13) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `jenis_kelamin` enum('p','l') DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_ortu`
--

INSERT INTO `tbl_ortu` (`id`, `nik`, `nama`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `jenis_kelamin`, `agama`, `status`) VALUES
(1, 239000000, 'Suhaimi', 'Tamat SD S', 'Wirausaha', 853451406, 'Kupang Nunding', 'l', 'Islam', 'Kandung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_poin`
--

CREATE TABLE `tbl_poin` (
  `id` int(10) NOT NULL,
  `nama_poin` varchar(25) DEFAULT NULL,
  `bobot` varchar(25) DEFAULT NULL,
  `jenis` enum('pelanggaran','prestasi') DEFAULT NULL,
  `status` enum('aktif','nonaktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_poin`
--

INSERT INTO `tbl_poin` (`id`, `nama_poin`, `bobot`, `jenis`, `status`) VALUES
(1, 'Juara Umum Sekolah', '100', 'prestasi', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_semester`
--

CREATE TABLE `tbl_semester` (
  `id` int(10) NOT NULL,
  `siswa_id` int(10) DEFAULT NULL,
  `poin_id` int(10) DEFAULT NULL,
  `wali_id` int(10) DEFAULT NULL,
  `ortu_id` int(10) DEFAULT NULL,
  `kelas_id` int(10) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `semester` int(1) DEFAULT NULL,
  `status` enum('aktif','nonaktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_semester`
--

INSERT INTO `tbl_semester` (`id`, `siswa_id`, `poin_id`, `wali_id`, `ortu_id`, `kelas_id`, `tanggal`, `semester`, `status`) VALUES
(1, 1, 1, 1, 1, 1, '2023-06-22', 2, 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id` int(10) NOT NULL,
  `nis` int(13) DEFAULT NULL,
  `nisn` int(12) DEFAULT NULL,
  `nama_siswa` varchar(25) DEFAULT NULL,
  `nik` int(16) DEFAULT NULL,
  `tempat_lahir` varchar(25) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('p','l') DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telp` int(13) DEFAULT NULL,
  `status` enum('aktif','nonaktif') DEFAULT NULL,
  `tingkat_kelas` varchar(10) DEFAULT NULL,
  `jurusan` varchar(25) DEFAULT NULL,
  `wali_kelas` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id`, `nis`, `nisn`, `nama_siswa`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `telp`, `status`, `tingkat_kelas`, `jurusan`, `wali_kelas`) VALUES
(1, 210010300, 303908, 'Rika Apliana', 2001001808, 'Tabalong', '2002-08-07', 'p', 'Jl. Adhyaksa VI Banjarmasin Utara', 822135941, 'aktif', 'XII', 'Teknik Komputer Jaringan', 'Randy Zulseka, S.Kom');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `status` enum('user','admin') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `level`, `status`) VALUES
(1, 'admin', '1234', '1', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_wali_kelas`
--

CREATE TABLE `tbl_wali_kelas` (
  `id` int(10) NOT NULL,
  `nik/nip` int(13) DEFAULT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `jk` enum('P','L') DEFAULT NULL,
  `pendidikan` varchar(25) DEFAULT NULL,
  `telp` int(13) DEFAULT NULL,
  `matpel` varchar(25) DEFAULT NULL,
  `alamat` varchar(25) DEFAULT NULL,
  `status` enum('wali_kelas','tu') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_wali_kelas`
--

INSERT INTO `tbl_wali_kelas` (`id`, `nik/nip`, `nama`, `jk`, `pendidikan`, `telp`, `matpel`, `alamat`, `status`) VALUES
(1, 202990000, 'Randy Zulseka, S.kom', 'L', 'S-1 Teknik Informatika', 85567777, 'Jaringan Komputer', 'Tanjung ', 'wali_kelas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_hubungan`
--
ALTER TABLE `tbl_hubungan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `ortu_id` (`ortu_id`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_ortu`
--
ALTER TABLE `tbl_ortu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_poin`
--
ALTER TABLE `tbl_poin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_semester`
--
ALTER TABLE `tbl_semester`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `poin_id` (`poin_id`),
  ADD KEY `wali_id` (`wali_id`),
  ADD KEY `ortu_id` (`ortu_id`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_wali_kelas`
--
ALTER TABLE `tbl_wali_kelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_hubungan`
--
ALTER TABLE `tbl_hubungan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_ortu`
--
ALTER TABLE `tbl_ortu`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_poin`
--
ALTER TABLE `tbl_poin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_semester`
--
ALTER TABLE `tbl_semester`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_wali_kelas`
--
ALTER TABLE `tbl_wali_kelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_hubungan`
--
ALTER TABLE `tbl_hubungan`
  ADD CONSTRAINT `tbl_hubungan_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `tbl_siswa` (`id`),
  ADD CONSTRAINT `tbl_hubungan_ibfk_2` FOREIGN KEY (`ortu_id`) REFERENCES `tbl_ortu` (`id`);

--
-- Ketidakleluasaan untuk tabel `tbl_semester`
--
ALTER TABLE `tbl_semester`
  ADD CONSTRAINT `tbl_semester_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `tbl_siswa` (`id`),
  ADD CONSTRAINT `tbl_semester_ibfk_2` FOREIGN KEY (`poin_id`) REFERENCES `tbl_poin` (`id`),
  ADD CONSTRAINT `tbl_semester_ibfk_3` FOREIGN KEY (`wali_id`) REFERENCES `tbl_wali_kelas` (`id`),
  ADD CONSTRAINT `tbl_semester_ibfk_4` FOREIGN KEY (`ortu_id`) REFERENCES `tbl_ortu` (`id`),
  ADD CONSTRAINT `tbl_semester_ibfk_5` FOREIGN KEY (`kelas_id`) REFERENCES `tbl_kelas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
