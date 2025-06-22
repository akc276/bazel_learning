#include "cpp/libfoo/foo.h"
#include <gtest/gtest.h>

TEST(FooTest, ReturnsOneHundred) {
    EXPECT_EQ(returnOneHundred(), 100);
}
