//Define data going into model
data {
  int<lower = 0> yobs;
  int<lower = 0> ex;
  real<lower = 0> alpha;
  real<lower = 0> beta;
}
//Unknown parameters: lambda
parameters {
  real<lower = 0> lambda;
}
//Model
model {
  lambda ~ gamma(alpha, beta);
  yobs ~ poisson(ex*lambda);
}

