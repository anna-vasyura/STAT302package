test_that("wrong input throws error", {
  expect_error(my_t.test("a string"))
  expect_error(my_t.test(2394))
  expect_error(my_t.test(x, alternative = 435, mu)
})
