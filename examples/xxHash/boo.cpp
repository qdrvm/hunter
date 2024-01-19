#include <xxhash.h>
#include <iostream>

int main() {
  XXH64_state_t* const state = XXH64_createState();
  XXH64_update(state, "hello", 5);
  XXH64_hash_t const hash = XXH64_digest(state);
  std::cout << std::hex << hash << std::endl;
  XXH64_freeState(state);
  return 0;
}
