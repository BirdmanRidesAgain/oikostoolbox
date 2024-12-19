say_hello <- function() { message("Hello!"); }

numeric_summary <- function(x, na.rm = FALSE) {

  min = min(x, na.rm=na.rm);
  max = max(x, na.rm=na.rm);
  mean = mean(x, na.rm=na.rm);
  sd = sd(x, na.rm=na.rm);
  length = length(x);
  Nmiss = sum(is.na(x));

  c(min=min, max=max, mean=mean, sd=sd, length=length, Nmiss=Nmiss);
}

char_summary <- function(x, na.rm = FALSE) {

  length = length(x);
  Nmiss = sum(is.na(x));
  Nunique = length(unique(x));

  c(length = length,
    Nmiss = Nmiss,
    Nunique = Nunique );
}
