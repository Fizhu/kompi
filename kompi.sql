-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17 Des 2017 pada 05.31
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kompi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `level_user` varchar(30) NOT NULL DEFAULT 'member',
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telepon` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `username`, `password`, `level_user`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `no_telepon`) VALUES
(1, 'Fizhu', 'fizhu', 'hafizhanbiya', 'admin', 'Bandung', '1996-09-15', 'Perum Nunyai Indah Blok C No 11 C', '08994660004'),
(1515061001, 'Reksa Suhud Tri Atmojo', 'reksa', '12345', 'member', 'Bandar Lampung', '1997-10-10', 'Korpri C3 No.6', '085289921564'),
(1515061003, 'Fitri Pradina', 'member13', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Tanganing', '1997-06-27', 'Jl.M.Yunus no 61', '0895538664663'),
(1515061004, 'Uli Ulbana Putri Arista', 'member14', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Bandar Lampung', '1997-07-23', 'Gg.Taman Mumi', '089685487710'),
(1515061005, 'Aprily Ayu Anbar', 'member15', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Bandar Lampung', '1997-04-22', 'Jl.Ms.Batu Bara no 58/10', '085709437458'),
(1515061006, 'Ayu Nafadila', 'member16', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Bandar Lampung', '1997-04-19', 'Kampung Baru', '085789155724'),
(1515061007, 'Maulid Fernando', 'member17', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Krui', '1997-08-31', 'Jl.Kapten Abaulnaa RAja basa', '081272062888'),
(1515061008, 'Fia Asysyifa Rizqiani Salsia', 'member18', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Jakarta', '1997-09-16', 'Jl.Jati No 103 T.Raya Batam', '082175185368'),
(1515061011, 'Pariyem', 'member91', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Sukajadi', '1995-07-10', 'Kampung Baru', '082307061706'),
(1515061013, 'Galang Aji Prakarsa', 'member19', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Metro', '1998-05-18', 'Metro', '085658385958'),
(1515061014, 'Era Desti Ramayani', 'member1234', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Tanjung Raman', '1997-12-05', 'Kebun Jeruk', '082379213408'),
(1515061015, 'Leady Pramudita Putri', 'member146', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Palembang', '1998-02-20', 'H.Komarudin', '089666072586'),
(1515061017, 'Verry Gusti Andrea', 'member1234', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Batam', '1997-08-08', 'Kedaton', '089705535502'),
(1515061018, 'Nadiya', 'member1215', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Bandar Lampung', '1997-09-12', 'Sukarame', '082181420202'),
(1515061019, 'Heni Novita Sari', 'member1413', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Bumi Dipasena Abadi', '1996-11-02', 'Grita Delicia', '08127869102'),
(1515061020, 'Gilang Fajriansyah', 'member1325', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Bandar Lampung', '1997-04-09', 'Perumahan Gunung', '08877021705'),
(1515061021, 'Sri Lestari', 'member1774', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Padang Sidempuan', '1997-01-25', 'Jl.H.Khomaruddin Perum Pesona', '082281975259'),
(1515061022, 'I WAYAN RASPAYANA ANDIKA BRATA', 'member178845', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Dharma Agung', '1997-08-16', 'Gg.Abang', '082186544154'),
(1515061023, 'FADEL TAFFAREL AMAS', 'member1678568', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Bandar Lampung', '1998-06-27', 'Jl Lada', '089619439935'),
(1515061024, 'FADILA AMELIA FUTRI', 'member134534', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Bandar Lampung', '1997-08-08', 'Jl.Embun Blok E.9 No.36', '085769858182'),
(1515061025, 'Imran Setiadi', 'member32441', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Jakarta', '1997-09-11', 'Jl.Dr.Susilo No 31', '081222211493'),
(1515061027, 'M. REYHAN ADITYA', 'member1436', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Bandar Lampung', '1996-11-28', 'Jl.Hayam Wuruk G.BinaMarga No27', '081279129171'),
(1515061029, 'Harlika Nobra Setia', 'member1236522', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Lampung Selatan', '1997-11-17', 'Kampung Baru', '082177772893'),
(1515061030, 'MUHAMMAD HAQI YUSUF', 'member12245', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Biembang', '1997-11-14', 'Jl.Gajah Mada Gg.ES.No.09', '0895341493896'),
(1515061031, 'MOCH MOGI IBRAHIM HARAHAP', 'member1567456', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Bandar Lampung', '1998-03-24', 'Jl.Lada Blok Tk II No 8', '085788724342'),
(1515061033, 'M. AZIZ AL ASSAD', 'member1745', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Bandar Lampung', '1997-01-23', 'Jl.A.Hamzah 97', '082306572582'),
(1515061034, 'TAZKIA KARIMA HERLI EFISON', 'member17542', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Denpasar', '1997-03-31', 'Jl.Nangka Gg.Flamboyan No 3 \r\n', '0895341498'),
(1515061035, 'Briyan Sitinjak', 'member153734', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Hanura', '1997-07-08', 'Jl.R.Soeprapto No.08', '08975776433'),
(1515061036, 'M.Hafizh Anbiya', 'member123', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Bandung', '1996-09-15', 'Perum Nunyai Indah Blok C No 11 C', '08994660004'),
(1515061037, 'M.BAGUS ARIFUDIN', 'member11235', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Sri Menanti', '1996-09-15', 'Jl.A2.Pagar Alam No 14', '082182430295'),
(1515061040, 'Yosa Anggara Hasan', 'member132156', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'Gunung Tapa', '1997-11-27', 'Rejabasa', '085768398952');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1515061041;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
