<?php

function terlambat($tgl_dateline, $tgl_kembali)
{

	$tgl_dateline_pcs = explode("-", $tgl_dateline);
	$tgl_dateline_pcs = $tgl_dateline_pcs[2] . "-" . $tgl_dateline_pcs[1] . "-" . $tgl_dateline_pcs[0];
	$tgl_kembali_pcs  = explode("-", $tgl_kembali);
	$tgl_kembali_pcs  = $tgl_kembali_pcs[2] . "-" . $tgl_kembali_pcs[1] . "-" . $tgl_kembali_pcs[0];
	$selisih          = strtotime($tgl_kembali_pcs) - strtotime($tgl_dateline_pcs);
	$selisih          = $selisih / 86400;

	if ($selisih >= 1) {
		$hasil_tgl = floor($selisih);
	} else {
		$hasil_tgl = 0;
	}
	return $hasil_tgl;
}

function setAlert($title = "", $conte = "", $color = "primary")
{
	$_SESSION['alert']['title'] = $title;
	$_SESSION['alert']['color'] = $color;
	$_SESSION['alert']['conte'] = $conte;
	$_SESSION['alert']['show'] = true;
}

function getAlert()
{
	$alert_color = $_SESSION['alert']['color'];
	$alert_title = $_SESSION['alert']['title'];
	$alert_conte = $_SESSION['alert']['conte'];

	echo 'setAlert("' . $alert_title . '", "' . $alert_conte . '", "' . $alert_color . '")';
	$_SESSION['alert']['show'] = false;
}
function check_nama_konsumen($koneksi, $id_konsumen)
{
	$sql = "SELECT * FROM  tb_barang_konsumen WHERE id_barang_konsumen=$id_konsumen";
	$query = mysqli_query($koneksi, $sql);
	$konsumen = mysqli_fetch_assoc($query);
	return $konsumen;
}
function kodeTransaksiBarangMasuk($koneksi)
{
	$sql = mysqli_query($koneksi, "SELECT max(tb_transaksi_suplier.kode) max_id FROM tb_transaksi_suplier");
	$maxId = mysqli_fetch_row($sql);
	$maxId = (intval(substr($maxId[0], 3, 3)));
	$maxId = intval($maxId);
	if ($maxId == null) {
		$INB = "INB001";
	}
	if ($maxId <= 999) {
		$noUrut = (int) substr($maxId, 0, 3);
		$noUrut++;

		$kode_urut = "INB" . sprintf("%03s", $noUrut);
	} else {
		$noUrut = (int) $maxId;
		$noUrut++;
		$kode_urut = "INB" . $noUrut;
	}
	return $kode_urut;
}
function kodeTransaksiPenjualan($koneksi)
{
	$sql = mysqli_query($koneksi, "SELECT max(tbl_transaksi.kode) max_id FROM tbl_transaksi");
	$maxId = mysqli_fetch_row($sql);
	$maxId = (intval(substr($maxId[0], 3, 3)));
	$maxId = intval($maxId);
	if ($maxId == null) {
		$inv = "INV001";
	}
	if ($maxId <= 999) {
		$noUrut = (int) substr($maxId, 0, 3);
		$noUrut++;

		$kode_urut = "INV" . sprintf("%03s", $noUrut);
	} else {
		$noUrut = (int) $maxId;
		$noUrut++;
		$kode_urut = "INV" . $noUrut;
	}
	return $kode_urut;
}
function kodeBarang($koneksi)
{
	$sql = mysqli_query($koneksi, "SELECT max(tb_barang_data.barang_data_kode) max_id FROM tb_barang_data");
	$maxId = mysqli_fetch_row($sql);
	$maxId = (intval(substr($maxId[0], 3, 3)));
	$maxId = intval($maxId);
	if ($maxId == null) {
		$BRG = "BRG001";
	}
	if ($maxId <= 999) {
		$noUrut = (int) substr($maxId, 0, 3);
		$noUrut++;

		$kode_urut = "BRG" . sprintf("%03s", $noUrut);
	} else {
		$noUrut = (int) $maxId;
		$noUrut++;
		$kode_urut = "BRG" . $noUrut;
	}
	return $kode_urut;
}
function kodeSuplier($koneksi)
{
	$sql = mysqli_query($koneksi, "SELECT max( tb_barang_suplier.barang_suplier_kode) max_id FROM  tb_barang_suplier");
	$maxId = mysqli_fetch_row($sql);
	$maxId = (intval(substr($maxId[0], 3, 3)));
	$maxId = intval($maxId);
	if ($maxId == null) {
		$SPL = "SPL001";
	}
	if ($maxId <= 999) {
		$noUrut = (int) substr($maxId, 0, 3);
		$noUrut++;

		$kode_urut = "SPL" . sprintf("%03s", $noUrut);
	} else {
		$noUrut = (int) $maxId;
		$noUrut++;
		$kode_urut = "SPL" . $noUrut;
	}
	return $kode_urut;
}
function kodeKonsumen($koneksi)
{
	$sql = mysqli_query($koneksi, "SELECT max( tb_barang_konsumen.barang_konsumen_kode) max_id FROM  tb_barang_konsumen");
	$maxId = mysqli_fetch_row($sql);
	$maxId = (intval(substr($maxId[0], 3, 3)));
	$maxId = intval($maxId);
	if ($maxId == null) {
		$KNS = "KNS001";
	}
	if ($maxId <= 999) {
		$noUrut = (int) substr($maxId, 0, 3);
		$noUrut++;

		$kode_urut = "KNS" . sprintf("%03s", $noUrut);
	} else {
		$noUrut = (int) $maxId;
		$noUrut++;
		$kode_urut = "KNS" . $noUrut;
	}
	return $kode_urut;
}
function kodePegawai($koneksi)
{
	$sql = mysqli_query($koneksi, "SELECT max( tb_pegawai.kode) max_id FROM  tb_pegawai");
	$maxId = mysqli_fetch_row($sql);
	$maxId = (intval(substr($maxId[0], 4, 3)));
	$maxId = intval($maxId);
	if ($maxId == null) {
		$PGW = "PGW-001";
	}
	if ($maxId <= 999) {
		$noUrut = (int) substr($maxId, 0, 4);
		$noUrut++;

		$kode_urut = "PGW-" . sprintf("%03s", $noUrut);
	} else {
		$noUrut = (int) $maxId;
		$noUrut++;
		$kode_urut = "PGW-" . $noUrut;
	}
	return $kode_urut;
}
