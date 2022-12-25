# GCluster

The current VB6 application is an experimental detector that uses a dynamic method named "in-depth analysis" to detect and interpret CpG islands, CpG clusters and other dinucleotide structures. In-depth analysis is made through repeated tests with different dinucleotide thresholds. <kbd>GCluster</kbd> was tested with randomly generated DNA sequences, multiple genes from <i>Homo sapiens</i> and several types of viral genomes. The application comes in two versions, namely GCluster v1.0 and GCluster v2.0. Both versions of the implementation provide the main signal and detect the peaks existing on a given region of the signal to highlight which of these regional peaks form clusters. Also, the second version uses a graphical method to present the results found above the DNA sequence.

# GCluster v 1.0


In the first version the signal and the results following the analysis are presented both in 2D and 1D. Notice that version one detects islands and island clusters by taking into consideration the local C+G content.

<kbd><img src="https://github.com/Gagniuc/GCluster/blob/main/img/GCLUSTER%20V1.png?raw=true" /></kbd>

# GCluster v 2.0

In the second version the signal and the results following the analysis are again presented both in 2D and 1D. However, version two brings a third chart by which an interpretation can be made regarding the content and the dinucleotide frequencies. Notice that version two detects islands and island clusters both by using the C+G content and the frequencies of dinucleotide combinations.

<kbd><img src="https://github.com/Gagniuc/GCluster/blob/main/img/GCLUSTER%20V2.png?raw=true" /></kbd>

# Example results

The result from below points out the peaks in the signal at every integer between 20% to 40% (please see the meaning in the PDF file).

~~~
CG island - number [1] starts at position 70b
CG island - number [2] starts at position 76b
CG island - number [3] starts at position 83b
CG island - number [4] starts at position 136b
CG island - number [5] starts at position 476b
CG island - number [6] starts at position 530b
CG island - number [7] starts at position 596b
CG island - number [8] starts at position 3095b
CG island - number [9] starts at position 3571b
CG island - number [10] starts at position 3659b
[^CG Islands=10 - CG Clusters=7]

CG island - number [1] starts at position 70b
CG island - number [2] starts at position 76b
CG island - number [3] starts at position 83b
CG island - number [4] starts at position 136b
CG island - number [5] starts at position 476b
CG island - number [6] starts at position 530b
CG island - number [7] starts at position 596b
CG island - number [8] starts at position 3095b
CG island - number [9] starts at position 3571b
CG island - number [10] starts at position 3659b
[^CG Islands=10 - CG Clusters=7]

CG island - number [1] starts at position 102b
CG island - number [2] starts at position 120b
CG island - number [3] starts at position 126b
CG island - number [4] starts at position 602b
CG island - number [5] starts at position 613b
CG island - number [6] starts at position 3101b
CG island - number [7] starts at position 3107b
CG island - number [8] starts at position 3663b
CG island - number [9] starts at position 3672b
[^CG Islands=9 - CG Clusters=5]

CG island - number [1] starts at position 102b
CG island - number [2] starts at position 120b
CG island - number [3] starts at position 126b
CG island - number [4] starts at position 602b
CG island - number [5] starts at position 613b
CG island - number [6] starts at position 3101b
CG island - number [7] starts at position 3107b
CG island - number [8] starts at position 3663b
CG island - number [9] starts at position 3672b
[^CG Islands=9 - CG Clusters=5]

CG island - number [1] starts at position 605b
CG island - number [2] starts at position 626b
CG island - number [3] starts at position 3109b
CG island - number [4] starts at position 3665b
CG island - number [5] starts at position 3698b
[^CG Islands=5 - CG Clusters=5]

CG island - number [1] starts at position 605b
CG island - number [2] starts at position 626b
CG island - number [3] starts at position 3109b
CG island - number [4] starts at position 3665b
CG island - number [5] starts at position 3698b
[^CG Islands=5 - CG Clusters=5]

CG island - number [1] starts at position 3111b
CG island - number [2] starts at position 3202b
CG island - number [3] starts at position 3700b
[^CG Islands=3 - CG Clusters=2]

CG island - number [1] starts at position 3111b
CG island - number [2] starts at position 3202b
CG island - number [3] starts at position 3700b
[^CG Islands=3 - CG Clusters=2]

CG island - number [1] starts at position 3127b
CG island - number [2] starts at position 3702b
[^CG Islands=2 - CG Clusters=2]

CG island - number [1] starts at position 3127b
CG island - number [2] starts at position 3702b
[^CG Islands=2 - CG Clusters=2]

CG island - number [1] starts at position 3131b
CG island - number [2] starts at position 3145b
CG island - number [3] starts at position 3147b
CG island - number [4] starts at position 3708b
[^CG Islands=4 - CG Clusters=3]

CG island - number [1] starts at position 3131b
CG island - number [2] starts at position 3145b
CG island - number [3] starts at position 3147b
CG island - number [4] starts at position 3708b
[^CG Islands=4 - CG Clusters=3]

CG island - number [1] starts at position 3149b
CG island - number [2] starts at position 3164b
CG island - number [3] starts at position 3710b
CG island - number [4] starts at position 3738b
CG island - number [5] starts at position 3745b
[^CG Islands=5 - CG Clusters=4]

CG island - number [1] starts at position 3149b
CG island - number [2] starts at position 3164b
CG island - number [3] starts at position 3710b
CG island - number [4] starts at position 3738b
CG island - number [5] starts at position 3745b
[^CG Islands=5 - CG Clusters=4]

CG island - number [1] starts at position 3170b
CG island - number [2] starts at position 3712b
CG island - number [3] starts at position 3728b
[^CG Islands=3 - CG Clusters=2]

CG island - number [1] starts at position 3170b
CG island - number [2] starts at position 3712b
CG island - number [3] starts at position 3728b
[^CG Islands=3 - CG Clusters=2]

CG island - number [1] starts at position 3172b
[^CG Islands=1 - CG Clusters=1]

CG island - number [1] starts at position 3172b
[^CG Islands=1 - CG Clusters=1]

[^CG Islands=0 - CG Clusters=0]

[^CG Islands=0 - CG Clusters=0]

[^CG Islands=0 - CG Clusters=0]

[CG Islands mean value=5.39787820159809E+17 - CG Clusters mean value=5.34496820107408E+15]
~~~

# References

- <i>Gagniuc, Paul, et al. A sensitive method for detecting dinucleotide islands and clusters through depth analysis. Romanian Journal of Diabetes Nutrition and Metabolic Diseases, 2011, 18(2), 165-70.</i>
