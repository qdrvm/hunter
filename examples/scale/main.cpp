#include <vector>
#include <cassert>
#include <algorithm>
#include "scale/scale.hpp"
#include "scale/encode_append.hpp"

int main() {
  std::vector v {1, 2, 3};
  auto enc = scale::encode(v).value();
  auto dec = scale::decode<std::vector<int>>(enc).value();
  assert(std::equal(v.begin(), v.end(), dec.begin()));

  std::vector<uint8_t> bytes {1, 2, 3};
  scale::EncodeOpaqueValue opaque{bytes};
  auto enc_opaque = scale::encode(opaque).value();
  auto another_enc_opaque = scale::encode(opaque).value();
  assert(scale::append_or_new_vec(enc_opaque, another_enc_opaque).has_value());
  return 0;
}
