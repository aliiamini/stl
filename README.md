
<!-- README.md is generated from README.Rmd. Please edit that file -->

# stl

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/aliiamini/stl/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/aliiamini/stl/actions/workflows/R-CMD-check.yaml)
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
#> Installing packages into 'C:/Users/aliia/AppData/Local/Temp/RtmpKqiG1e/temp_libpath4df455bf52a5'
#> (as 'lib' is unspecified)
#> package 'Rcpp' successfully unpacked and MD5 sums checked
#> package 'glue' successfully unpacked and MD5 sums checked
#> package 'cli' successfully unpacked and MD5 sums checked
#> package 'rlang' successfully unpacked and MD5 sums checked
#> package 'yaml' successfully unpacked and MD5 sums checked
#> 
#> The downloaded binary packages are in
#>  C:\Users\aliia\AppData\Local\Temp\Rtmpqi1NwE\downloaded_packages
#> ── R CMD build ─────────────────────────────────────────────────────────────────
#>       ✔  checking for file 'C:\Users\aliia\AppData\Local\Temp\Rtmpqi1NwE\remotes3d7c6b9d18ae\aliiamini-stl-3ca7407/DESCRIPTION'
#>       ─  preparing 'stl':
#>    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   ✔  checking DESCRIPTION meta-information
#>       ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>       ─  building 'stl_0.0.0.9000.tar.gz'
#>      
#> 
#> Installing package into 'C:/Users/aliia/AppData/Local/Temp/RtmpKqiG1e/temp_libpath4df455bf52a5'
#> (as 'lib' is unspecified)
```

You can install the development version of stl from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("aliiamini/stl")
#> ℹ Loading metadata database✔ Loading metadata database ... done
#>  
#> → Will install 29 packages.
#> → Will download 28 CRAN packages (16.28 MB), cached: 1 (122.68 kB).
#> + backports     1.5.0  
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
#> ℹ Getting 28 pkgs (16.28 MB), 1 (122.68 kB) cached
#> ✔ Cached copy of Metrics 0.1.4 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of R6 2.6.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of RcppTOML 0.2.3 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of base64enc 0.1-3 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of config 0.3.2 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of generics 0.1.4 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of here 1.0.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of jsonlite 2.0.0 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of keras 2.15.0 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of lifecycle 1.0.4 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of magrittr 2.0.3 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of pROC 1.18.5 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of plyr 1.8.9 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of png 0.1-8 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of processx 3.8.6 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of ps 1.9.1 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of rappdirs 0.3.3 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of reticulate 1.42.0 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of rprojroot 2.0.4 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of rstudioapi 0.17.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of tensorflow 2.16.0 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of tfautograph 0.3.2 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of tfruns 1.5.3 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of tidyselect 1.2.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of vctrs 0.6.5 (x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of whisker 0.4.1 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of withr 3.0.2 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Cached copy of zeallot 0.2.0 (i386+x86_64-w64-mingw32) is the latest build
#> ✔ Installed Metrics 0.1.4  (437ms)
#> ✔ Installed R6 2.6.1  (568ms)
#> ✔ Installed RcppTOML 0.2.3  (903ms)
#> ✔ Installed backports 1.5.0  (998ms)
#> ✔ Installed base64enc 0.1-3  (1.1s)
#> ✔ Installed config 0.3.2  (1.2s)
#> ✔ Installed generics 0.1.4  (1.3s)
#> ✔ Installed jsonlite 2.0.0  (1.3s)
#> ✔ Installed here 1.0.1  (1.5s)
#> ✔ Installed lifecycle 1.0.4  (1.5s)
#> ✔ Installed keras 2.15.0  (1.7s)
#> ✔ Installed magrittr 2.0.3  (1.9s)
#> ✔ Installed pROC 1.18.5  (890ms)
#> ✔ Installed plyr 1.8.9  (984ms)
#> ✔ Installed png 0.1-8  (1.1s)
#> ✔ Installed processx 3.8.6  (1.3s)
#> ✔ Installed rappdirs 0.3.3  (1.2s)
#> ✔ Installed ps 1.9.1  (1.3s)
#> ✔ Installed rprojroot 2.0.4  (1.3s)
#> ✔ Installed reticulate 1.42.0  (1.4s)
#> ✔ Installed tensorflow 2.16.0  (1.3s)
#> ✔ Installed rstudioapi 0.17.1  (1.3s)
#> ✔ Installed tfautograph 0.3.2  (1.2s)
#> ✔ Installed tfruns 1.5.3  (1.2s)
#> ✔ Installed tidyselect 1.2.1  (1.3s)
#> ✔ Installed vctrs 0.6.5  (1.2s)
#> ✔ Installed whisker 0.4.1  (1s)
#> ✔ Installed withr 3.0.2  (967ms)
#> ✔ Installed zeallot 0.2.0  (946ms)
#> ✔ 1 pkg + 36 deps: kept 6, added 29 [8.8s]
```
