import PortfolioCore

expect :: Bool -> IO ()
expect True = pure ()
expect False = error "fixture mismatch"

main :: IO ()
main = do
  let signalcase_1 = Signal 54 74 22 5 6
  expect (score signalcase_1 == 131)
  expect (classify signalcase_1 == "review")
  let signalcase_2 = Signal 72 89 24 7 6
  expect (score signalcase_2 == 168)
  expect (classify signalcase_2 == "review")
  let signalcase_3 = Signal 101 85 24 5 5
  expect (score signalcase_3 == 229)
  expect (classify signalcase_3 == "accept")
