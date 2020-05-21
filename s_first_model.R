# generate fake data
set.seed(42) # set correct seed
N <- 100
Y <- rnorm(N, 1.6, 0.2)
hist(Y)

# compile model
library(rstan)
options(mc.cores = floor(parallel::detectCores()/2))

model <- stan_model("first_model.stan")

fit <- sampling(model, list(N=N, Y=Y), iter=400, chains=4) #increased number of iterations
print(fit)

# graph
params <- extract(fit)

hist(params$mu)
hist(params$sigma)

library(shinystan)
launch_shinystan(fit)
