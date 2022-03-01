# Date: 2022-March-1
# Aim Convert csv file to javascript to be used in tech radar by quadrant


setwd("_data")
radar<-read.csv("techmap.csv")
# What are the column names
colnames(radar)
# The following heading format is suggested
# "name","ring","quadrant","isNew","description"

# N.B. > any deviation will not work without altering the code 
tools<-radar[radar$quadrant=='tools',]

write(paste0('new TechRadar.Blip("',tools$name,'",',tools$ring,',',tolower(tools$isNew),'),'),"tools.txt")
# TODO
# if NA then do not paste last part

platforms<-radar[radar$quadrant=='platforms',]
write(paste0('new TechRadar.Blip("',platforms$name,'",',platforms$ring,',',tolower(platforms$isNew),'),'),"platforms.txt")

technology<-radar[radar$quadrant=='technology',]
write(paste0('new TechRadar.Blip("',technology$name,'",',technology$ring,',',tolower(technology$isNew),'),'),"technology.txt")

languages<-radar[radar$quadrant=='languages-and-frameworks',]
write(paste0('new TechRadar.Blip("',languages$name,'",',languages$ring,',',tolower(languages$isNew),'),'),"languages.txt")