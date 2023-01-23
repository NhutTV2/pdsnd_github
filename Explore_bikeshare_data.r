
ny = read.csv('new_york_city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')

head(ny)

head(wash)

head(chi)

# Convert Start.Time into month, and save it as a separate column
ny$month= format(as.Date(ny$Start.Time, format="%Y-%m-%d %H:%M:%S"),'%b')
wash$month = format(as.Date(wash$Start.Time, format="%Y-%m-%d %H:%M:%S"), '%b')
chi$month = format(as.Date(chi$Start.Time, format="%Y-%m-%d %H:%M:%S"), '%b')

library(ggplot2)

# Count the number of Trip in each month in New York
aggregate(ny$month, by=list(ny$month), FUN=length)
# Create a plot
ggplot(aes(x=month), data = ny) +
geom_bar() +
xlab('Month') +
ylab('Number of trip') +
ggtitle('Number of trip in each month at New York')

# Count the number of Trip in each month in Washington
aggregate(wash$month, by=list(wash$month), FUN=length)
# Create a plot
ggplot(aes(x=month), data = wash) +
geom_bar() +
xlab('Month') +
ylab('Number of trip') +
ggtitle('Number of trip in each month at Washington')

# Count the number of Trip in each month in Chicago
aggregate(chi$month, by=list(chi$month), FUN=length)
# Create a plot
ggplot(aes(x=month), data = chi) +
geom_bar() +
xlab('Month') +
ylab('Number of trip') +
ggtitle('Number of trip in each month at Chicago')

# Count the number of Trip in each month in Chicago
aggregate(ny$User.Type, by=list(ny$User.Type), FUN=length)
# Create a plot
ggplot(aes(x=User.Type), data = ny) +
geom_bar() +
xlab('User type') +
ylab('Number of trip') +
ggtitle('Number of trip for each user type at New York')

# Count the number of Trip in each month in Washington
aggregate(wash$User.Type, by=list(wash$User.Type), FUN=length)
# Create a plot
ggplot(aes(x=User.Type), data = wash) +
geom_bar() +
xlab('User type') +
ylab('Number of trip') +
ggtitle('Number of trip for each user type at Washington')

# Count the number of Trip in each month in Chicago
aggregate(chi$User.Type, by=list(chi$User.Type), FUN=length)
# Create a plot
ggplot(aes(x=User.Type), data = chi) +
geom_bar() +
xlab('User type') +
ylab('Number of trip') +
ggtitle('Number of trip for each user type at Chicago')

# Convert Start.Time into week day, and save it as a separate column
ny$weekday= format(as.Date(ny$Start.Time, format="%Y-%m-%d %H:%M:%S"),'%A')
wash$weekday= format(as.Date(wash$Start.Time, format="%Y-%m-%d %H:%M:%S"),'%A')
chi$weekday= format(as.Date(chi$Start.Time, format="%Y-%m-%d %H:%M:%S"),'%A')

# Count the number of Trip in each week day in New York
aggregate(ny$weekday, by=list(ny$weekday), FUN=length)
# Create a plot
ggplot(aes(x=weekday), data = ny) +
geom_bar() +
xlab('Week day') +
ylab('Number of trip') +
ggtitle('Number of trip in each week day at New York')

# Count the number of Trip in each week day in Washington
aggregate(wash$weekday, by=list(wash$weekday), FUN=length)
# Create a plot
ggplot(aes(x=weekday), data = wash) +
geom_bar() +
xlab('Week day') +
ylab('Number of trip') +
ggtitle('Number of trip in each week day at Washington')

# Count the number of Trip in each week day in Washington
aggregate(chi$weekday, by=list(chi$weekday), FUN=length)
# Create a plot
ggplot(aes(x=weekday), data = chi) +
geom_bar() +
xlab('Week day') +
ylab('Number of trip') +
ggtitle('Number of trip in each week day at Chicago')

system('python -m nbconvert Explore_bikeshare_data.ipynb')
