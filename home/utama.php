<?php
	session_start();
	if (!$_SESSION['isLogin']) {
		header('location: index.php');
	}
	else{
		include 'config/connection.php';
		$username = $_SESSION['username'];
		$data = mysqli_query($connection, "SELECT * from user where username = '$username' limit 1 ");
		$biodata = mysqli_fetch_array($data);

	}

?>
<!DOCTYPE html>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Creative CV</title>
    <meta name="description" content="Creative CV is a HTML resume template for professionals. Built with Bootstrap 4, Now UI Kit and FontAwesome, this modern and responsive design template is perfect to showcase your portfolio, skils and experience." />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/aos.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="styles/main.css" rel="stylesheet">
</head>

<body id="top">
    <header>
        <div class="profile-page sidebar-collapse">
            <nav class="navbar navbar-expand-lg fixed-top navbar-transparent bg-primary" color-on-scroll="400">
                <div class="container">
                    <div class="navbar-translate"><?= $biodata['nama']?>
                    
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <div class="page-content">
        <div>
            <div class="profile-page">
                <div class="wrapper">
                    <div class="page-header page-header-small" filter-color="green">
                        <div class="page-header-image" data-parallax="true" style="background-image: url('images/cc-bg-1.jpg');"></div>
                        <div class="container">
                            <div class="content-center">
                                <div class="cc-profile-image">
                                    <a href="#"><img src="../asset/img/<?= $biodata['foto'] ?>"></a>
                                </div>
                                <div class="h2 title"><?= $biodata['nama'] ?></div>
                                <p class="category text-white"><?= $biodata['username'] ?></p>
                                <a class="btn btn-primary smooth-scroll mr-2" href="../logout.php" data-aos="zoom-in" data-aos-anchor="data-aos-anchor">Log Out</a>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
            <div class="section" id="about">
                <div class="container">
                    <div class="card" data-aos="fade-up" data-aos-offset="10">
                        <div class="row">
                            <div class="col-lg-6 col-md-12">
                                <div class="card-body">
                                    <div class="h4 mt-0 title">Tentang</div>
                                    <p><?= $biodata['deskripsi_diri'] ?> </p>
                                    </p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <div class="card-body">
                                    <div class="h4 mt-0 title">Informasi Umum</div>
                                    <div class="row">
                                        <div class="col-sm-4"><strong class="text-uppercase">Umur:</strong></div>
                                        <div class="col-sm-8"><?= $biodata['umur'] ?></div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-sm-4"><strong class="text-uppercase">Email:</strong></div>
                                        <div class="col-sm-8"><?= $biodata['email'] ?></div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-sm-4"><strong class="text-uppercase">Telp:</strong></div>
                                        <div class="col-sm-8"><?= $biodata['no_telp'] ?></div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-sm-4"><strong class="text-uppercase">Alamat:</strong></div>
                                        <div class="col-sm-8"><?= $biodata['alamat'] ?></div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-sm-4"><strong class="text-uppercase">Status:</strong></div>
                                        <div class="col-sm-8"><?= $biodata['status'] ?></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="section" id="skill">
                <div class="container">
                    <div class="h4 text-center mb-4 title">Professional Skills</div>
                    <div class="card" data-aos="fade-up" data-aos-anchor-placement="top-bottom">
                        <div class="card-body">
                            <div class="row">
                            <?php
                                $username = $_SESSION['username'];
                                $skill = mysqli_query($connection, "SELECT * FROM skill where username = '$username' ");
                                while ($skl = mysqli_fetch_array($skill)) {
					        ?>
                                <div class="col-md-6">
                                    <div class="progress-container progress-primary"><span class="progress-badge"><?= $skl['nama_skill'] ?></span>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-primary" data-aos="progress-full" data-aos-offset="10" data-aos-duration="2000" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="<?php echo "width:".$skl['persentase']."%;"?>"></div><span class="progress-value"><?= $skl['persentase'] ?>%</span>
                                        </div>
                                    </div>
                                </div>
                        <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="section" id="experience">
                <div class="container cc-experience">
                    <div class="h4 text-center mb-4 title">Work Experience</div>
                    <div class="card">
                        <div class="row">
                        <?php
                                $username = $_SESSION['username'];
                                $kerja = mysqli_query($connection, "SELECT * FROM kerja where username = '$username' ");
                                while ($pekerjaan = mysqli_fetch_array($kerja)) {
					        ?>
                            <div class="col-md-3 bg-primary" data-aos="fade-right" data-aos-offset="50" data-aos-duration="500">
                                <div class="card-body cc-experience-header">
                                    <p><?= $pekerjaan['thn_mulai'] ?> - <?= $pekerjaan['thn_keluar'] ?></p>
                                    <div class="h5"><?= $pekerjaan['kategori'] ?></div>
                                </div>
                            </div>
                            <div class="col-md-9" data-aos="fade-left" data-aos-offset="50" data-aos-duration="500">
                                <div class="card-body">
                                    <div class="h5"><?= $pekerjaan['nama_pekerjaan'] ?></div>
                                    <p><?= $pekerjaan['desk_pekerjaan'] ?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
                </div>
            </div>
            <div class="section">
                <div class="container cc-education">
                    <div class="h4 text-center mb-4 title">Education</div>
                    <?php
                        $username = $_SESSION['username'];
                        $pendidikan = mysqli_query($connection, "SELECT * FROM pendidikan where username = '$username' ");
                        while ($pend = mysqli_fetch_array($pendidikan)) {
					?>
                    <div class="card">
                        <div class="row">
                            <div class="col-md-3 bg-primary" data-aos="fade-right" data-aos-offset="50" data-aos-duration="500">
                                <div class="card-body cc-education-header">
                                    <p><?= $pend['thn_masuk'] ?> - <?= $pend['thn_keluar'] ?></p>
                                    <div class="h5"><?= $pend['ket'] ?> </div>
                                </div>
                            </div>
                       
                             <div class="col-md-9" data-aos="fade-left" data-aos-offset="50" data-aos-duration="500">
                                <div class="card-body">
                                    <div class="h5"><?= $pend['instansi'] ?></div>
                                    <p><?= $pend['tentang_instansi'] ?></p> </div>
                            </div>
                        </div>
                        </div> <?php } ?>
                </div>
            </div>
            
    <footer class="footer">
        <div class="container text-center"><a class="cc-facebook btn btn-link" href="#"><i class="fa fa-facebook fa-2x " aria-hidden="true"></i></a><a class="cc-twitter btn btn-link " href="#"><i class="fa fa-twitter fa-2x " aria-hidden="true"></i></a>
                <a class="cc-instagram btn btn-link" href="#"><i class="fa fa-instagram fa-2x " aria-hidden="true"></i></a></div>
        <div class="h4 title text-center">Muhammad Ashabul Kahfi</div>
        <div class="text-center text-muted">
            <p>&copy; 2020<br>Download - <a class="credit" href="https://drive.google.com/open?id=1bgjCWoZBeHS3ej5E3gKd0hpOEHKnofWr" target="_blank">CV KAHFI</a></p>
        </div>
    </footer>
    <script src="js/core/jquery.3.2.1.min.js"></script>
    <script src="js/core/popper.min.js"></script>
    <script src="js/core/bootstrap.min.js"></script>
    <script src="js/now-ui-kit.js?v=1.1.0"></script>
    <script src="js/aos.js"></script>
    <script src="scripts/main.js"></script>
</body>

</html>