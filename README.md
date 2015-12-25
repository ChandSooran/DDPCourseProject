# DDPCourseProject
Developing Data Products - Course Project
 
This section contains enough documentation to enable a novice to use the Shiny application.

Investors often find it useful to chart the time series of individual securities in order to
look for potential patterns or evidence of structural change in the data generating process.

There are tools, called technical indicators, that investors use to detect trends and other patterns.

I have included three such technical indicators: MACD ("moving average convergence divergence"),
Bollinger Bands, Exponential Moving Average, and Volume.  MACD indicates trend, Bollinger Bands 
indiicate range around the trend, EMA shows trend in another way, and volume is self-explanatory.

Input the ticker in the text box for the stock you wish to evaluate, select the type of chart,
you want, select from the list of available technical indicators, and choose a date range over
which you want to evaluate the security.  In addition to the straightforward chart, bar charts
and candlesticks show additional information about the open, high, low, and close on any given
day's trading.

The Shiny app will be reactive to any changes the user makes in the sidebar panel for these parameters.

So, play around with the app and see how good you think the technical indicators are in describing
the movement.
