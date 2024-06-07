<p align="center">
    
 <img src="kklogo.png" alt="knockknock logo">
    
</p>

# knockknock
A simple tool to gather information about Website / DNS / Subdomains / Ports / Directories by enumeration of over 50000+ domains and sub-domains with simple commands. The Goal of knockknock is to provide an overview of the target in a short amount of time while maintaining the accuracy of results. Instead of executing several tools one after another it can provide similar results keeping dependencies small and simple.

In the below command examples, change:
- "target" with the target name
- "domain" with fhe domain name

Try changing the ports if program shows error during directories enumeration.

[![forthebadge](https://forthebadge.com/images/badges/made-with-go.svg)](https://forthebadge.com)

# Installation
```
git clone https://github.com/krishealty/knockknock
```

```
cd knockknock
```

```
go get
```

```
make
```

Examples
----------

- DNS enumeration:
    
    - `knockknock dns -target target.domain`
    - `knockknock dns -o txt -target target.domain`
    - `knockknock dns -o html -target target.domain`
    - `knockknock dns -plain -target target.domain`

- Subdomains enumeration:

    - `knockknock subdomain -target target.domain`
    - `knockknock subdomain -w wordlist.txt -target target.domain`
    - `knockknock subdomain -o txt -target target.domain`
    - `knockknock subdomain -o html -target target.domain`
    - `knockknock subdomain -i 400 -target target.domain`
    - `knockknock subdomain -i 4** -target target.domain`
    - `knockknock subdomain -c -target target.domain`
    - `knockknock subdomain -db -target target.domain`
    - `knockknock subdomain -plain -target target.domain`

- Directories enumeration:

    - `knockknock dir -target target.domain`
    - `knockknock dir -w wordlist.txt -target target.domain`
    - `knockknock dir -o txt -target target.domain`
    - `knockknock dir -o html -target target.domain`
    - `knockknock dir -i 500,401 -target target.domain`
    - `knockknock dir -i 5**,401 -target target.domain`
    - `knockknock dir -c -target target.domain`
    - `knockknock dir -plain -target target.domain`

- Ports enumeration:
      
    - Default (all ports, so 1-65635) `knockknock port -target target.domain`
    - Specifying ports range `knockknock port -p 20-90 -target target.domain`
    - Specifying starting port (until the last one) `knockknock port -p 20- -target target.domain`
    - Specifying ending port (from the first one) `knockknock port -p -90 -target target.domain`
    - Specifying single port `knockknock port -p 80 -target target.domain`
    - Specifying output format (txt)`knockknock port -o txt -target target.domain`
    - Specifying output format (html)`knockknock port -o html -target target.domain`
    - Specifying multiple ports `knockknock port -p 21,25,80 -target target.domain`
    - Specifying common ports `knockknock port -common -target target.domain`
    - Print only results `knockknock port -plain -target target.domain`

- Full report:
      
    - Default (all ports, so 1-65635) `knockknock report -target target.domain`
    - Specifying ports range `knockknock report -p 20-90 -target target.domain`
    - Specifying starting port (until the last one) `knockknock report -p 20- -target target.domain`
    - Specifying ending port (from the first one) `knockknock report -p -90 -target target.domain`
    - Specifying single port `knockknock report -p 80 -target target.domain`
    - Specifying output format (txt)`knockknock report -o txt -target target.domain`
    - Specifying output format (html)`knockknock report -o html -target target.domain`
    - Specifying directories wordlist `knockknock report -wd dirs.txt -target target.domain`
    - Specifying subdomains wordlist `knockknock report -ws subdomains.txt -target target.domain`
    - Specifying status codes to be ignored in directories scanning `knockknock report -id 500,501,502 -target target.domain`
    - Specifying status codes to be ignored in subdomains scanning `knockknock report -is 500,501,502 -target target.domain`
    - Specifying status codes classes to be ignored in directories scanning `knockknock report -id 5**,4** -target target.domain`
    - Specifying status codes classes to be ignored in subdomains scanning `knockknock report -is 5**,4** -target target.domain`
    - Use also a web crawler for directories enumeration `knockknock report -cd -target target.domain`
    - Use also a web crawler for subdomains enumeration `knockknock report -cs -target target.domain`
    - Use also a public database for subdomains enumeration `knockknock report -db -target target.domain`
    - Specifying multiple ports `knockknock report -p 21,25,80 -target target.domain`
    - Specifying common ports `knockknock report -common -target target.domain`
