<?php
session_start();
include "config.php";
if (isset($_SESSION['admin']) || isset($_SESSION['user'])) {
    header("location: index.php");
} else if (isset($_POST['login'])) {
    $nama   = $_POST['username'];
    $pass   = $_POST['password'];
    $ambil  = $koneksi->query("SELECT * FROM tb_user INNER JOIN tb_user_level ON tb_user.id_level = tb_user_level.id_level WHERE username='$nama' and password='$pass'");
    $data   = $ambil->fetch_assoc();
    $ketemu = $ambil->num_rows;
    if ($ketemu >= 1) {
        $_SESSION['user'] = [
            'user'        => $data['username'],
            'nama'        => $data['nama'],
            'pass'        => $data['password'],
            'level'       => $data['id_level'],
            'level_title' => $data['title'],
            'id'          => $data['id']
        ];

        $_SESSION['alert']['title'] = "";
        $_SESSION['alert']['color'] = "";
        $_SESSION['alert']['show'] = false;

        header("location:index.php");
    } else {
        echo '
        <script type = "text/javascript">
            alert("Username dan Password Anda Salah");
        </script>
    ';
    }
}
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Bengkel Agung Toyota Sipin Jambi Persediaan Suku Cadang Mobil</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <style>
        body {
            background-image: url(images/Agung.jpg);
            background-size: cover;
        }

        .container {
            margin-top: 150px;
        }

        .panel-heading {
            text-align: center;
        }

        .panel-heading h4 {
            font-weight: bold;
        }

        .text-putih {
            color: #fff;
        }

        .fixed-bawah {
            position: fixed;
            bottom: 0;
        }

        .text-tengah {
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>

</head>

<body>
    <div class="container">
        <h2 class="mb-3 text-putih text-center">Bengkel Agung Toyota Sipin Jambi Persediaan Suku Cadang Mobil</h2>
        <br>
        <div class="row ">
            <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4> Silahkan Login</h4>
                    </div>
                    <div class="panel-body">
                        <form method="post">
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" class="form-control" name="username" placeholder="Username">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" name="password" placeholder="Password">
                            </div>
                            <button type="submit" class="btn btn-primary btn-block" name="login">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer text-tengah">
        <h5 class="text-putih">copyright &copy; 2020 Bengkel Agung Toyota Sipin Jambi
    </footer>
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>

</body>

</html>