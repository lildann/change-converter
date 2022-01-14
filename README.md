# Change Converter
Given a number in pounds and pence, work out the most efficient way of breaking it down into notes and coins, e.g. 11.55 becomes ["£10", "£1", "50p", "5p"]

## Acceptance Criteria
change_generator.convert(7.42)
 => ["£5", "£1", "£1", "20p", "20p", "2p"]
change_generator.convert(40)
 => ["£20", "£20"]
change_generator.convert(16.30)
 => ["£10", "£5", "£1", "20p", "10p"]
change_generator.convert(19.99)
 => ["£10", "£5", "£1", "£1", "£1", "£1", "50p", "20p", "20p", "5p", "2p", "2p"]
change_generator.convert(76.81)
 => ["£50", "£20", "£5", "£1", "50p", "20p", "10p", "1p"]

### Model
* Class -> ChangeGenerator
* Method -> #convert(float)

INPUT | OUTPUT 
------|--------
change_generator.convert(50.00) | ["£50"]
change_generator.convert(40) | ["£20", "£20"]