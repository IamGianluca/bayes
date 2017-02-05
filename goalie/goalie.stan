data {
    int players;
    int player[players];
    int shots[players];
    int saves[players];
    real alpha;
    real beta;
}
parameters {
    real<lower=0, upper=1> theta[players];
}
model {
    theta ~ beta(alpha, beta);
    saves ~ binomial(shots, theta);
}
