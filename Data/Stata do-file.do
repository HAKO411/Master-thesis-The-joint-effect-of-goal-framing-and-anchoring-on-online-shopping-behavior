clear
use "/Users/tridunghuynh/Desktop/Data/Data for Stata.dta"
*Descriptive Statistics

summarize Interest Intention Willingness_to_pay Product i.AH i.AL i.Framing Knowledge Risk_aversion i.Gender Age i.Ethnicity
histogram Interest, discrete frequency
histogram Intention, frequency
histogram Willingness_to_pay, frequency

ttest Interest, by(Framing)
ttest Intention, by(Framing)
ttest Willingness_to_pay, by(Framing)
oneway Interest Anchor_t, tabulate bonferroni
oneway Intention Anchor_t, tabulate bonferroni
oneway Willingness_to_pay Anchor_t, tabulate bonferroni

*Ordered Logistic Reggression
ologit Interest i.AH i.AL i.Framing AH#Framing AL#Framing
ologit Intention i.AH i.AL i.Framing AH#Framing AL#Framing

ologit Interest i.AH i.AL i.Framing AH#Framing AL#Framing
ologit Interest i.AH i.AL i.Framing AH#Framing AL#Framing Knowledge Risk_aversion i.Gender Age i.Ethnicity Product
ologit Intention i.AH i.AL i.Framing AH#Framing AL#Framing
ologit Intention i.AH i.AL i.Framing AH#Framing AL#Framing Knowledge Risk_aversion i.Gender Age i.Ethnicity Product
ologit Willingness_to_pay i.AH i.AL i.Framing AH#Framing AL#Framing
ologit Willingness_to_pay i.AH i.AL i.Framing AH#Framing AL#Framing Knowledge Risk_aversion i.Gender Age i.Ethnicity Product

ologit Interest i.AH i.AL i.Framing AH#Framing AL#Framing
fitstat 
ologit Interest i.AH i.AL i.Framing AH#Framing AL#Framing Knowledge Risk_aversion i.Gender Age i.Ethnicity Product
fitstat
ologit Intention i.AH i.AL i.Framing AH#Framing AL#Framing
fitstat
ologit Intention i.AH i.AL i.Framing AH#Framing AL#Framing Knowledge Risk_aversion i.Gender Age i.Ethnicity Product
fitstat
ologit Willingness_to_pay i.AH i.AL i.Framing AH#Framing AL#Framing
fitstat
ologit Willingness_to_pay i.AH i.AL i.Framing AH#Framing AL#Framing Knowledge Risk_aversion i.Gender Age i.Ethnicity Product
fitstat
