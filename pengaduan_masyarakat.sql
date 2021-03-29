-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Mar 2021 pada 02.41
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduan_masyarakat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`, `created_at`, `updated_at`) VALUES
('1234512345', 'aaaaa', 'aaaaa', '$2y$10$Ygk/wOdiGsFnGnNcfYUxyuPD8.6A1fHIl24QoCR8nMEa0UklrcoTC', '1234512345', '2021-03-25 21:22:21', '2021-03-25 21:22:21'),
('123456123456', 'Hendro', 'hendro', '$2y$10$AA8yX5yAMidsUBNwgEowjOOk2O.iR/SBtcNHMXmvztoJkZ03xLuWO', '123456123456', '2021-03-26 00:38:57', '2021-03-26 00:38:57'),
('4682639447', 'yurod', 'yurod', '$2y$10$GHGcx61axZQN8bHZz3yubOp6NQoa3z46/.4AkwDnasW4g4csGgYKC', '085384654332', '2021-03-23 18:26:17', '2021-03-23 18:26:17'),
('65275422482', 'jsnksn', 'jack', '$2y$10$ZaCXnN9SKAXl.lw3GjP0fu8mko6XSRYMKjLr7KEHdIcFK5NW3nChS', '75468907546', '2021-03-25 17:33:02', '2021-03-25 17:33:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_22_132342_create_masyarakats_table', 1),
(5, '2021_03_22_133235_create_pengaduans_table', 1),
(6, '2021_03_22_134935_create_petugas_table', 1),
(7, '2021_03_22_135856_create_tanggapans_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` bigint(20) UNSIGNED NOT NULL,
  `tgl_pengaduan` datetime NOT NULL,
  `nik` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_laporan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','proses','selesai') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`, `created_at`, `updated_at`) VALUES
(1, '2021-03-24 08:27:58', '4682639447', 'AKU CAPEK', 'assets/pengaduan/qcV7LlcCdeQrrjvnGiHsVf2nFuxR7wZtvR12zifw.jpg', 'selesai', '2021-03-24 01:27:58', '2021-03-23 19:09:39'),
(2, '2021-03-24 09:39:00', '4682639447', 'Ululu', 'assets/pengaduan/IGaCrMeTF18UxiegyF3F0nxGiIiMFuEYJ0Hq4Q92.jpg', 'proses', '2021-03-24 02:39:00', '2021-03-23 19:39:44'),
(3, '2021-03-26 07:35:35', '65275422482', 'kebakaran', 'assets/pengaduan/8E6ebLj9FdChHDAKXTvaNhYN1X7jad9lJLcnsNlo.jpg', 'selesai', '2021-03-26 00:35:35', '2021-03-25 17:38:03'),
(4, '2021-03-26 11:23:53', '1234512345', 'hai', 'assets/pengaduan/4fXaNBLSUGXdjWLYSSHmcoIcucZZpqq16D4WnpDn.jpg', 'proses', '2021-03-26 04:23:53', '2021-03-25 21:24:41'),
(5, '2021-03-26 02:39:36', '123456123456', 'Jalan hendro rusak', 'assets/pengaduan/nBpumN1SfS4vlzhMse0VSLA8hbrerBse6INoweOp.jpg', 'selesai', '2021-03-26 07:39:36', '2021-03-26 00:43:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` bigint(20) UNSIGNED NOT NULL,
  `nama_petugas` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('admin','petugas') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `alamat`, `telp`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Adminstrator', 'admin', '$2y$10$nmPiGstfMz74BUHU.8r8qO5TWpmPqaMxPW0hkt.01Zlzf1oXCiVwu', '', '08990671253', 'admin', '2021-03-22 20:34:10', '2021-03-22 20:34:10'),
(6, 'Petugas', 'petugas', '$2y$10$AJLFxOjMr5HyqTKszetJ7On0igdONmxz7v2Q6AL62Egy2WHRu2.Fm', '', '1234567890', 'petugas', '2021-03-25 21:27:26', '2021-03-26 00:40:27'),
(7, 'Barun', 'barun', '$2y$10$RqMd/h2FQkLDofBQ0x1G1e1DCJMgW93MjhnQDTKB9zpBJS5hQ.Lpy', 'Jalan Mangga gadung', '12341234', 'petugas', '2021-03-26 00:52:46', '2021-03-26 00:52:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` bigint(20) UNSIGNED NOT NULL,
  `id_pengaduan` bigint(20) UNSIGNED NOT NULL,
  `tgl_tanggapan` datetime NOT NULL,
  `tanggapan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_petugas` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-03-26 00:00:00', 'selesai', 1, '2021-03-23 19:09:03', '2021-03-25 21:28:19'),
(2, 2, '2021-03-26 00:00:00', 'oke bos', 1, '2021-03-23 19:39:45', '2021-03-25 21:28:28'),
(3, 3, '2021-03-26 00:00:00', 'oke selesai', 1, '2021-03-25 17:36:46', '2021-03-25 21:28:36'),
(4, 4, '2021-03-26 00:00:00', 'siap', 1, '2021-03-25 21:24:41', '2021-03-25 21:28:41'),
(5, 5, '2021-03-26 00:00:00', 'selesai', 1, '2021-03-26 00:41:04', '2021-03-26 00:43:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`),
  ADD UNIQUE KEY `masyarakat_username_unique` (`username`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD KEY `pengaduan_nik_foreign` (`nik`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`),
  ADD UNIQUE KEY `petugas_username_unique` (`username`);

--
-- Indeks untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`),
  ADD KEY `tanggapan_id_pengaduan_foreign` (`id_pengaduan`),
  ADD KEY `tanggapan_id_petugas_foreign` (`id_petugas`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD CONSTRAINT `pengaduan_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `masyarakat` (`nik`);

--
-- Ketidakleluasaan untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD CONSTRAINT `tanggapan_id_pengaduan_foreign` FOREIGN KEY (`id_pengaduan`) REFERENCES `pengaduan` (`id_pengaduan`),
  ADD CONSTRAINT `tanggapan_id_petugas_foreign` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
