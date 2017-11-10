context("test encoding")

library(dplyr)

test_that("it works on linux", {
  expect_equal(
    nrow( pl %>% filter(letter=="ą") ),
    1
  )
})


test_that("it works on windows", {
  skip_on_os("linux")
  ch <- iconv("ą", from="UTF-8", to="CP1250")
  expect_equal(
    nrow( pl %>% filter(letter == !!!ch ) ),
    1
  )
})

