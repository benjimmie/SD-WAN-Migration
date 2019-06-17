# SDWAN

**iperf3-upload.bat**

**iperf3-download.bat**


**launch-browser.bat**
>reads from applist.txt

**ping-applist.bat**
>reads from applist.txt

Dir Structure
```
.
|-- README.md
|-- applist.txt          #list of IPs/http addresses for testing
|-- browser-applist.bat  #batch file for opening default browser and going to address/IP listed in applist.txt
|-- gnuwin
|   |-- grep.exe         #searches one or more input files for lines containing a match to a specified pattern
|   |-- libiconv2.dll    #converts from one character encoding to another through Unicode conversion
|   |-- libintl3.dll     #library that provides native language support to programs
|   |-- pcre3.dll        #functions that implement regular expression pattern matching using the same syntax and semantics as Perl 5
|   |-- regex2.dll       #searches for and matches text strings
|   `-- tee.exe          #sends output to multiple files
|-- iperf
|   |-- cyggcc_s-1.dll   #cygwin GNU compiler collection
|   |-- cygwin1.dll      #cygwin
|   `-- iperf3.exe       #tool for network performance measurement and tuning
|-- iperf3-download.bat  #batch file for calling iperf3 download parameters and manipulating the output via gnuwin grep & tee
|-- iperf3-upload.bat    #batch file for calling iperf3 with upload parameters and manipulating the output via gnuwin grep & tee
|-- ping-applist.bat     #batch file for pinging IPs listed in applist.txt
```
