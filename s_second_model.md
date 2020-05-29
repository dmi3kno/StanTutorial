Sea ice in Northern Hemisphere
================
Dmytro Perepolkin
29 May, 2020

<https://github.com/ourcodingclub/CC-Stan-intro>

Data from National Snow and Ice Data Center <https://nsidc.org/>

``` r
ice <- read.csv("data/seaice.csv", stringsAsFactors = FALSE)
```

``` r
plot(extent_north ~ year, data=ice)
```

![](s_second_model_files/figure-gfm/r%20plotdata-1.png)<!-- -->

``` r
lm_north <- lm(extent_north ~ year, data=ice)
summary(lm_north)
```

    ## 
    ## Call:
    ## lm(formula = extent_north ~ year, data = ice)
    ## 
    ## Residuals:
    ##      Min       1Q   Median       3Q      Max 
    ## -0.49925 -0.17713  0.04898  0.16923  0.32829 
    ## 
    ## Coefficients:
    ##               Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept) 120.503036   6.267203   19.23   <2e-16 ***
    ## year         -0.054574   0.003137  -17.40   <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.2205 on 37 degrees of freedom
    ## Multiple R-squared:  0.8911, Adjusted R-squared:  0.8881 
    ## F-statistic: 302.7 on 1 and 37 DF,  p-value: < 2.2e-16

We can add linear model to the plot by throwing it into abline()

``` r
plot(extent_north ~ year, data=ice)
abline(lm_north, col="red", lty=2)
```

![](s_second_model_files/figure-gfm/r%20plotab-1.png)<!-- -->

So the equation of our linear model is \(y=\alpha+\beta*x+\epsilon\)
