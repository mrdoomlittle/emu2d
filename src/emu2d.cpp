# include "emu2d.hpp"

mdl::uint_t mdl::emu2d(uint_t __xa, uint_t __ya, uint_t __xa_len, uint_t __ya_len) {
    return (__xa + (__ya * __xa_len));
}
