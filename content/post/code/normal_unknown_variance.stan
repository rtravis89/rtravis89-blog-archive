
data {
  int<lower = 0> n;
  vector[n] d;
}
//Unknown parameters: Variance
parameters {
  real<lower = 0> S;
}

model {
  d ~ normal(0, sqrt(S));
}

generated quantities {
    real s;
    s = sqrt(S);
}
