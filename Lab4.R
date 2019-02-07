library(tidyverse)
source("http://www.openintro.org/stat/data/cdc.R")
cdc <- as_tibble(cdc)
cdc
ggplot(data = cdc, mapping = aes(x= weight, y = height), position = "dodge") +
geom_point(mapping = aes(color = genhlth, shape = genhlth), position = "dodge") +
  geom_smooth(mapping = aes(color = genhlth), se = FALSE) +
   theme_bw() +
  facet_wrap(~ gender) +
  labs(y = "Survey Participants",
      title = "General Health by Weight and Gender")

#### Findings 
I (Richard Park) found that general health varied between weight and gender. The red linear trend line (which indicates a general health of excellent) for both female and male were extremely different from each other. Oddly enough, the males peaked in excellent general health at the weight of about 250 pounds whereas, females peaked in excellent health after a weight of about 350 pounds. Another finding that I found interesting was that males tend to have more participants with fair or poor general health compared to females. The general trend lines indicate a lot of interesting trends.  

            