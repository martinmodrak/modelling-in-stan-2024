data {
  int<lower=0> N;
  vector[N] y;
  real<lower=0> sigma_prior_sd;
  real mu_prior_mean;
  real<lower=0> mu_prior_sd;
}

parameters {
  real mu;
  real<lower=0> sigma;
}

model {
  // likelihood
  target += normal_lpdf(y | mu, sigma);
  // prior
  target += normal_lpdf(mu | mu_prior_mean, mu_prior_sd);
  target += normal_lpdf(sigma | 0, sigma_prior_sd);
}
