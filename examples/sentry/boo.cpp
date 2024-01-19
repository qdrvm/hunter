
#include <sentry.h>

int main() { 
  sentry_options_t *options = sentry_options_new();
  sentry_init(options);
  sentry_close();
  return 0; 
}
