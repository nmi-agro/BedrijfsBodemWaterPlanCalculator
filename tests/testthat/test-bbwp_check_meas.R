
require(testthat)

test_that("bbwp_check_meas can return all measures", {
  # run example 1
  test <- bbwp_check_meas(dt = NULL,eco = FALSE, score = FALSE)
  
  expect_equal(
    object = dim(test),
    expected = c(169,67),
    tolerance = 0.01)
})

test_that("bbwp_check_meas can return only the ecoregling measures", {
  # run example 2
  test <- bbwp_check_meas(dt = NULL,eco = TRUE, score = FALSE)
  
  expect_equal(
    object = dim(test),
    expected = c(82,67),
    tolerance = 0.01)
  
  expect_equal(object = nrow(test[is.na(eco_id)]),
               expect = 0)
})

test_that("bbwp_check_meas returns an empty data.table when used for scoring and no data.table with measures is supplied", {
  # run example 3
  test <- bbwp_check_meas(dt = NULL,eco = TRUE, score = TRUE)
  
  expect_equal(
    object = dim(test),
    expected = c(0,69),
    tolerance = 0.01)
  
  test <- bbwp_check_meas(dt = NULL,eco = FALSE, score = TRUE)
  
  expect_equal(
    object = dim(test),
    expected = c(0,69),
    tolerance = 0.01)
})


test_that("bbwp_check_meas checks and extends table when measures are supplied", {
  
  # get internal table with measures
  dt.measures <- as.data.table(BBWPC::bbwp_measures)
  dt.measures <- dt.measures[!is.na(eco_id)]
  
  # make measurement list for 2 of the 4 fields
  measures <- rbind(data.table(id = 1, dt.measures[grepl('B189|G50|G3|B137|B172|G84',bbwp_id)]),
                    data.table(id = 3, dt.measures[grepl('B135|G84|B118|G58|B146',bbwp_id)]))
  measures$bbwp_status <- 'given for ANLB'
  
  # run example 4
  test <- bbwp_check_meas(dt = measures,eco = TRUE, score = TRUE)
  
  expect_equal(
    object = dim(test),
    expected = c(11,69),
    tolerance = 0.01)
  
  # run example 4
  test <- bbwp_check_meas(dt = measures,eco = TRUE, score = FALSE)
  
  expect_equal(
    object = dim(test),
    expected = c(83,67),
    tolerance = 0.01)
})



