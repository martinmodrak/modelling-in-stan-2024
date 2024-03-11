data {
  int<lower=0> N;
  array[N] int y;
}

parameters {
  real log_mu;
  real<lower=0> phi;
}

model {
  // likelihood
  target += neg_binomial_2_log_lpmf(y | log_mu, phi);
  // prior
  target += normal_lpdf(log_mu | 2, 1);
  target += exponential_lpdf(phi | 1);
}
