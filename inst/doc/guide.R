## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----library, eval=FALSE, message=FALSE, warning=FALSE------------------------
#  library(DesignCTPB)

## ----alpha_split, message=FALSE, warning=FALSE, eval=FALSE--------------------
#  alpha_split()# the default setting will give an optimal results of 3-dimensional case

## ----visulization, eval=FALSE, warning=FALSE----------------------------------
#  res <- design_ctpb(m=24, n_dim=3, sd_full=1/sqrt(20),delta_linear_bd=c(0.2,0.8))
#  res$plot_alpha # to see the 3-d rotatable plot of optimal alpha versus r2 and r3.
#  res$plot_power # to see the 3-d rotatable plot of optimal power versus r2 and r3.
#  res$opt_r_split
#  res$opt_alpha_split
#  res$opt_power

## -----------------------------------------------------------------------------
data(res_weak, package = "DesignCTPB")

## ----echo=TRUE, fig.height=8, fig.show='asis', fig.width=8, warning=FALSE-----
res_weak$plot_power

## ----echo=TRUE, fig.height=8, fig.show='asis', fig.width=8, warning=FALSE-----
res_weak$plot_alpha

## ----warning=FALSE------------------------------------------------------------
#optimal choice of each population's proportion
res_weak$opt_r_split

## -----------------------------------------------------------------------------
#the optimal power of the optimal design
res_weak$opt_power

## -----------------------------------------------------------------------------
#the optimal alpha split of the optimal design
res_weak$opt_alpha_split

## ----warning=FALSE, eval=FALSE------------------------------------------------
#  alpha_split(r=c(1,0.303),N3=100,sd_full=1/sqrt(20),delta_linear_bd = c(0.2,0.3))

## ----eval=FALSE, warning=FALSE------------------------------------------------
#  r2 <- seq(0.025,1,by=0.025)
#  res_2dim <- matrix(rep(0,3*length(r2)), ncol=3)
#  for(ii in 1:length(r2)){
#    res_2dim[ii,] <- alpha_split(r=c(1,r2[ii]),N3=100,sd_full=1/sqrt(20),delta_linear_bd = c(0.2,0.3))
#  }

## ----eval=FALSE, warning=FALSE------------------------------------------------
#  power_value <- res[,3]
#  opt_r2 <- r2[which.max(power_value)]
#  opt_alpha <- res[which.max(power_value),1:2]
#  opt_r2
#  opt_alpha

## -----------------------------------------------------------------------------
data(res_strong, package = "DesignCTPB")

## ----eval=FALSE, warning=FALSE------------------------------------------------
#  # Not show
#  res_strong$plot_power

## ----eval=FALSE, warning=FALSE------------------------------------------------
#  # Not show
#  res_strong$plot_alpha

## -----------------------------------------------------------------------------
#the optimal power of the optimal design
res_strong$opt_power

## -----------------------------------------------------------------------------
#the optimal alpha split of the optimal design
res_strong$opt_alpha_split

## ----warning=FALSE------------------------------------------------------------
#optimal choice of each population's proportion
res_strong$opt_r_split

