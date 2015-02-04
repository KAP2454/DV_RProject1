dfOrders_InterestingPlot <- data.frame(eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select (shipped_date - order_date) as lagtime from orders where shipped_date is not null order by lagtime"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/PDB1.usuniversi01134.oraclecloud.internal', USER='DV_ORDERS', PASS='orcl', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'False'), verbose = TRUE), 1, 2^31-1))))

ggplot(dfOrders_InterestingPlot,aes(x=LAGTIME,stat = 'bin',binwidth=1))+geom_bar(aes(fill = as.factor(LAGTIME)),binwidth=1)+ylab('Frequency') +xlab('Time to Ship')+ggtitle('Distribution of Time to Ship Orders')

