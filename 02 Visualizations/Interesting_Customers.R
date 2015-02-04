
ggplot(dfCustomers,aes(x=CUSTOMER_STATE,stat = 'bin',fill = CUSTOMER_STATE))+geom_bar()+ylab('# of Customers') +xlab('State')+ggtitle('Customers by State')
