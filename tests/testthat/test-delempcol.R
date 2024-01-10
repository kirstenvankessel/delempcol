test_that("delempcol works", {
  data <- data.frame(full_column = c(1,2,3,4,5), empty_column = c(NA, NA, NA, NA, NA)) %>% delempcol
  data_expected <- data.frame(full_column = c(1,2,3,4,5))
  expect_equal(data, data_expected)
})

test_that("delempcol does not delete zeros", {
  data <- data.frame(full_column = c(1,2,3,4,5), zero_column = c(0, 0, 0, 0, 0)) %>% delempcol
  data_expected <- data.frame(full_column = c(1,2,3,4,5), zero_column = c(0, 0, 0, 0, 0))
  expect_equal(data, data_expected)
})
