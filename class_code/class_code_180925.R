children <- c("13yo_boy", "8yo_Boy", "5yo_girl", "17yo_girl", "12yo_boy")

library(tibble)
library(stringr)

kid_activities <- tibble(children = str_to_lower(children),
                         activities = c("soccer", "flute",
                                        "hockey", "painting",
                                        "4h"))
kid_activities

kid_activities$gender <- NA

kid_activities[str_detect(kid_activities$children, "boy"),
               "gender"] <- "male"

kid_activities[str_detect(kid_activities$children, "girl"),
               "gender"] <- "female"

library(readr)
kid_activities$age_in_years <- parse_number(
                            kid_activities$children)

kid_activities

str_split(children, "_")

str_split("This is a sentence that I wrote", " ")

library(stringi)

stri_locate(pattern = "i", "string", fixed = T)
stri_locate(pattern = "in", "string", fixed = T)

#lazy
stri_locate(pattern = "in", "stringing along", fixed = T)

#greedy
stri_locate_all(pattern = "in", "stringing along", fixed = T)

str_sub("18yo_boy", -3, -1)
str_sub("18yo_girl", -3, -1)

str_sub("18yo_boy", stri_locate("18yo_boy", pattern = "_",
                                fixed = T)[2]+1, -1)

str_sub("18yo_girl", stri_locate("18yo_girl", pattern = "_",
                                 fixed = T)[2]+1, -1)

stri_locate("18yo_girl", pattern = "_",
            fixed = T)[1]

str_sub(children, stri_locate(children, pattern = "_",
                              fixed = T)[,2]+1, -1)

str_trim("       something      ")

str_squish("first word        second word")

str_count("The driver on my ride was great. The driver made me feel safe in my lyft", "driver")


library(lubridate)

mdy("May 18, 1951")
mdy("5/18/1951")
mdy("may 18 51")

mdy("18/5/1951")

#May 1, 1951

mdy("5/1/1951")
dmy("5/1/1951")

mdy("2/31/2018")

today()

bday <- mdy("7-25-2015")
bday

today() - bday

interval(bday, today())/years(1)
interval(bday, today())/months(1)

interval(mdy("1-1-1914"), today())%/%years(10)

now()

ymd_hms("2017-11-28 10:00:00")

pm(now())
am(now())

a_time <- hm("22:00")
a_time
pm(a_time)

sometime <- ymd_hms("18-10-1 10:00:00")
anothertime <- ymd_hms("18-10-1 14:00:00")

anothertime - sometime

interval(sometime, anothertime)/minutes(1)
