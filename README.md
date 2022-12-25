# GCluster

The current VB6 application is an experimental detector that uses a dynamic method named "in-depth analysis" to detect and interpret CpG islands, CpG clusters and other dinucleotide structures. In-depth analysis is made through repeated tests with different dinucleotide thresholds. <kbd>GCluster</kbd> was tested with randomly generated DNA sequences, multiple genes from <i>Homo sapiens</i> and several types of viral genomes. The application comes in two versions, namely GCluster v1.0 and GCluster v2.0. Both versions of the implementation provide the main signal and detect the peaks existing on a given region of the signal to highlight which of these regional peaks form clusters. Also, the second version uses a graphical method to present the results found above the DNA sequence.

# GCluster v 1.0

Version 1 detects islands and island clusters by taking into consideration the local C+G content.

<kbd><img src="https://github.com/Gagniuc/GCluster/blob/main/img/GCLUSTER%20V1.png?raw=true" /></kbd>

# GCluster v 2.0

Version 2 detects islands and island clusters both by using the C+G content and dinucleotide combinations.

<kbd><img src="https://github.com/Gagniuc/GCluster/blob/main/img/GCLUSTER%20V2.png?raw=true" /></kbd>

# References

- <i>Gagniuc, Paul, et al. A sensitive method for detecting dinucleotide islands and clusters through depth analysis. Romanian Journal of Diabetes Nutrition and Metabolic Diseases, 2011, 18(2), 165-70.</i>
