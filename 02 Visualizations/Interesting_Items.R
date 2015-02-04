dfItems_InterestingPlot <- dfItems
dfItems_InterestingPlot$ITEM_ID <- factor(dfItems_InterestingPlot$ITEM_ID)

ggplot(dfItems_InterestingPlot,aes(x=ITEM_ID,y=UNIT_PRICE))+geom_bar(stat = 'identity', aes(fill = ITEM_ID))+ylab('Price of Item') +xlab('Item ID')+ggtitle('Price Distribution')+coord_cartesian(ylim=c(10,18))

