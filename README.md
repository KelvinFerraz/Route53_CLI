# Route53_CLI
Utilizar o AWS CLI para criar registros no Route53 da AWS

Add to AWS ROUTE53 CNAME With AWS CLI

1 - Configure AWS CLI ( SECURITY KEY AND SECRET KEY )

2 - Get ID HOSTED ZONE = aws route53 list-hosted-zones

3 - Command = aws route53 change-resource-record-sets --hosted-zone-id ID-HOSTED-ZONE --change-batch file://file.json

4 - Add domains list in file eg: list_domains, domains_exmaple.com don't forget to change in the loop 

5 - Change the VAR VALUE AND ID_HOSTED

6 - Run script add_domain

