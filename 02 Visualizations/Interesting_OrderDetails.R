dfOrders_InterestingPlot <- data.frame(eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select item_id, sum(order_qty) as order_qty_sum from order_details group by item_id order by item_id"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/PDB1.usuniversi01134.oraclecloud.internal', USER='DV_ORDERS', PASS='orcl', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'False'), verbose = TRUE), 1, 2^31-1))))

dfOrders_InterestingPlot$ITEM_ID <- factor(dfOrders_InterestingPlot$ITEM_ID)

ggplot(dfOrders_InterestingPlot,aes(x=ITEM_ID,y=ORDER_QTY_SUM))+geom_bar(stat = 'identity', aes(fill = ITEM_ID))+ylab('# of Orders') +xlab('Item ID')+ggtitle('Orders by Item')
