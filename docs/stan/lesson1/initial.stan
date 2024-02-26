data {
  int<lower=0> N;
  vector[N] y;
}

parameters {
  real mu;
}

model {
  // likelihood
  target += normal_lpdf(y | mu, 1);
  // prior
  target += normal_lpdf(mu | 0, 1);
}
