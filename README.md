
<!-- README.md is generated from README.Rmd. Please edit that file -->

# stl

<!-- badges: start -->
<!-- badges: end -->

# stl <img src="man/figures/logo.png" align="right" height="120" />

**stl** is an R package for Survey Transfer Learning (STL)—a sustainable
framework for recycling political survey data using deep learning.

It enables researchers to: - Transfer predictive knowledge from one
survey to another (e.g., CES → ANES), - Generate synthetic responses
when key variables are missing, - Avoid costly, redundant surveys and
reduce environmental impact.

## Installation

``` r
# Not yet on CRAN
remotes::install_github("aliiamini/stl")
#> Using GitHub PAT from the git credential store.
#> Downloading GitHub repo aliiamini/stl@HEAD
#> Rcpp  (1.0.12 -> 1.0.14) [CRAN]
#> glue  (1.7.0  -> 1.8.0 ) [CRAN]
#> cli   (3.6.2  -> 3.6.5 ) [CRAN]
#> rlang (1.1.4  -> 1.1.6 ) [CRAN]
#> yaml  (2.3.8  -> 2.3.10) [CRAN]
#> Installing 5 packages: Rcpp, glue, cli, rlang, yaml
#> Installing packages into 'C:/Users/aliia/AppData/Local/Temp/RtmpKqiG1e/temp_libpath4df4622f2e1'
#> (as 'lib' is unspecified)
#> package 'Rcpp' successfully unpacked and MD5 sums checked
#> package 'glue' successfully unpacked and MD5 sums checked
#> package 'cli' successfully unpacked and MD5 sums checked
#> package 'rlang' successfully unpacked and MD5 sums checked
#> package 'yaml' successfully unpacked and MD5 sums checked
#> 
#> The downloaded binary packages are in
#>  C:\Users\aliia\AppData\Local\Temp\Rtmp0I3qet\downloaded_packages
#> ── R CMD build ─────────────────────────────────────────────────────────────────
#>       ✔  checking for file 'C:\Users\aliia\AppData\Local\Temp\Rtmp0I3qet\remotes216c6b082fac\aliiamini-stl-17ceea0/DESCRIPTION'
#>       ─  preparing 'stl': (390ms)
#>    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   ✔  checking DESCRIPTION meta-information
#>       ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>       ─  building 'stl_0.0.0.9000.tar.gz'
#>      
#> 
#> Installing package into 'C:/Users/aliia/AppData/Local/Temp/RtmpKqiG1e/temp_libpath4df4622f2e1'
#> (as 'lib' is unspecified)
```

You can install the development version of stl from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("aliiamini/stl")
#> ✔ Updated metadata database: 5.76 MB in 15 files.
#> ℹ Updating metadata database✔ Updating metadata database ... done
#>  
#> → Will install 29 packages.
#> → Will download 29 CRAN packages (16.41 MB).
#> + backports     1.5.0  [dl] (122.68 kB)
#> + base64enc     0.1-3  [dl] (33.12 kB)
#> + config        0.3.2  [dl] (112.15 kB)
#> + generics      0.1.4  [dl] (85.14 kB)
#> + here          1.0.1  [dl] (64.77 kB)
#> + jsonlite      2.0.0  [dl] (1.11 MB)
#> + keras         2.15.0 [dl] (3.28 MB)
#> + lifecycle     1.0.4  [dl] (140.93 kB)
#> + magrittr      2.0.3  [dl] (229.42 kB)
#> + Metrics       0.1.4  [dl] (85.60 kB)
#> + plyr          1.8.9  [dl] (1.11 MB)
#> + png           0.1-8  [dl] (194.23 kB)
#> + pROC          1.18.5 [dl] (1.17 MB)
#> + processx      3.8.6  [dl] (699.35 kB)
#> + ps            1.9.1  [dl] (658.75 kB)
#> + R6            2.6.1  [dl] (88.64 kB)
#> + rappdirs      0.3.3  [dl] (52.59 kB)
#> + RcppTOML      0.2.3  [dl] (610.97 kB)
#> + reticulate    1.42.0 [dl] (2.28 MB)
#> + rprojroot     2.0.4  [dl] (114.97 kB)
#> + rstudioapi    0.17.1 [dl] (342.23 kB)
#> + tensorflow    2.16.0 [dl] (215.21 kB)
#> + tfautograph   0.3.2  [dl] (164.71 kB)
#> + tfruns        1.5.3  [dl] (1.49 MB)
#> + tidyselect    1.2.1  [dl] (228.15 kB)
#> + vctrs         0.6.5  [dl] (1.36 MB)
#> + whisker       0.4.1  [dl] (83.97 kB)
#> + withr         3.0.2  [dl] (231.37 kB)
#> + zeallot       0.2.0  [dl] (62.77 kB)
#> ℹ Getting 29 pkgs (16.41 MB)
#> ✔ Got base64enc 0.1-3 (x86_64-w64-mingw32) (33.13 kB)
#> ✔ Got Metrics 0.1.4 (i386+x86_64-w64-mingw32) (86.38 kB)
#> ✔ Got R6 2.6.1 (i386+x86_64-w64-mingw32) (88.72 kB)
#> ✔ Got config 0.3.2 (i386+x86_64-w64-mingw32) (112.45 kB)
#> ✔ Got backports 1.5.0 (x86_64-w64-mingw32) (122.68 kB)
#> ✔ Got generics 0.1.4 (i386+x86_64-w64-mingw32) (85.05 kB)
#> ✔ Got RcppTOML 0.2.3 (x86_64-w64-mingw32) (610.98 kB)
#> ✔ Got tidyselect 1.2.1 (i386+x86_64-w64-mingw32) (228.88 kB)
#> ✔ Got tensorflow 2.16.0 (i386+x86_64-w64-mingw32) (216.46 kB)
#> ✔ Got ps 1.9.1 (x86_64-w64-mingw32) (658.44 kB)
#> ✔ Got zeallot 0.2.0 (i386+x86_64-w64-mingw32) (62.80 kB)
#> ✔ Got pROC 1.18.5 (x86_64-w64-mingw32) (1.17 MB)
#> ✔ Got plyr 1.8.9 (x86_64-w64-mingw32) (1.11 MB)
#> ✔ Got withr 3.0.2 (i386+x86_64-w64-mingw32) (233.12 kB)
#> ✔ Got png 0.1-8 (x86_64-w64-mingw32) (194.23 kB)
#> ✔ Got processx 3.8.6 (x86_64-w64-mingw32) (699.26 kB)
#> ✔ Got tfautograph 0.3.2 (i386+x86_64-w64-mingw32) (165.43 kB)
#> ✔ Got rstudioapi 0.17.1 (i386+x86_64-w64-mingw32) (346.36 kB)
#> ✔ Got whisker 0.4.1 (i386+x86_64-w64-mingw32) (84.36 kB)
#> ✔ Got vctrs 0.6.5 (x86_64-w64-mingw32) (1.37 MB)
#> ✔ Got magrittr 2.0.3 (x86_64-w64-mingw32) (229.98 kB)
#> ✔ Got keras 2.15.0 (i386+x86_64-w64-mingw32) (3.30 MB)
#> ✔ Got rprojroot 2.0.4 (i386+x86_64-w64-mingw32) (115.02 kB)
#> ✔ Got here 1.0.1 (i386+x86_64-w64-mingw32) (64.97 kB)
#> ✔ Got lifecycle 1.0.4 (i386+x86_64-w64-mingw32) (141.48 kB)
#> ✔ Got tfruns 1.5.3 (i386+x86_64-w64-mingw32) (1.49 MB)
#> ✔ Got rappdirs 0.3.3 (x86_64-w64-mingw32) (52.80 kB)
#> ✔ Got reticulate 1.42.0 (x86_64-w64-mingw32) (2.28 MB)
#> ✔ Got jsonlite 2.0.0 (x86_64-w64-mingw32) (1.11 MB)
#> ✔ Installed Metrics 0.1.4  (526ms)
#> ✔ Installed R6 2.6.1  (731ms)
#> ✔ Installed generics 0.1.4  (809ms)
#> ✔ Installed base64enc 0.1-3  (1s)
#> ✔ Installed backports 1.5.0  (1.1s)
#> ✔ Installed here 1.0.1  (1.2s)
#> ✔ Installed config 0.3.2  (1.4s)
#> ✔ Installed RcppTOML 0.2.3  (1.6s)
#> ✔ Installed magrittr 2.0.3  (1.6s)
#> ✔ Installed jsonlite 2.0.0  (1.8s)
#> ✔ Installed lifecycle 1.0.4  (1.9s)
#> ✔ Installed keras 2.15.0  (2.1s)
#> ✔ Installed pROC 1.18.5  (1.5s)
#> ✔ Installed png 0.1-8  (1.4s)
#> ✔ Installed plyr 1.8.9  (1.7s)
#> ✔ Installed processx 3.8.6  (1.8s)
#> ✔ Installed ps 1.9.1  (1.9s)
#> ✔ Installed rappdirs 0.3.3  (1.9s)
#> ✔ Installed reticulate 1.42.0  (1.8s)
#> ✔ Installed rprojroot 2.0.4  (1.9s)
#> ✔ Installed rstudioapi 0.17.1  (1.9s)
#> ✔ Installed tensorflow 2.16.0  (1.8s)
#> ✔ Installed tfautograph 0.3.2  (1.8s)
#> ✔ Installed tfruns 1.5.3  (1.8s)
#> ✔ Installed tidyselect 1.2.1  (1.9s)
#> ✔ Installed vctrs 0.6.5  (1.9s)
#> ✔ Installed whisker 0.4.1  (1.7s)
#> ✔ Installed withr 3.0.2  (1.6s)
#> ✔ Installed zeallot 0.2.0  (1.6s)
#> ✔ 1 pkg + 36 deps: kept 6, added 29, dld 29 (16.45 MB) [21.5s]
```
