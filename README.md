# Crawlbuddy

An experiment into crawling and parsing as described at http://goo.gl/3MW3x

## Installation

Add this line to your application's Gemfile:

    gem 'crawlbuddy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install crawlbuddy

## Usage

To Be Determined

## Goals

#### Robustness:
The Web contains servers that create spider traps, which are generators of web pages that mislead crawlers into getting stuck fetching an infinite number of pages in a particular domain. Crawlers must be designed to be resilient to such traps. Not all such traps are malicious; some are the inadvertent side-effect of faulty website development.

#### Politeness:
Web servers have both implicit and explicit policies regulating the rate at which a crawler can visit them. These politeness policies must be respected.

#### Distributed:
The crawler should have the ability to execute in a distributed fashion across multiple machines.

#### Scalable:
The crawler architecture should permit scaling up the crawl rate by adding extra machines and bandwidth.

#### Performance and efficiency:
The crawl system should make efficient use of various system resources including processor, storage and network bandwidth.

#### Quality:
Given that a significant fraction of all web pages are of poor utility for serving user query needs, the crawler should be biased towards fetching ``useful'' pages first.

#### Freshness:
In many applications, the crawler should operate in continuous mode: it should obtain fresh copies of previously fetched pages. A search engine crawler, for instance, can thus ensure that the search engine's index contains a fairly current representation of each indexed web page. For such continuous crawling, a crawler should be able to crawl a page with a frequency that approximates the rate of change of that page.

#### Extensible:
Crawlers should be designed to be extensible in many ways - to cope with new data formats, new fetch protocols, and so on. This demands that the crawler architecture be modular.


## Requirements

1. Only one connection should be open to any given host at a time.
2. A waiting time of a few seconds should occur between successive requests to a host.
3. Politeness restrictions detailed in Section [20.2.1](http://nlp.stanford.edu/IR-book/html/htmledition/crawler-architecture-1.html#sec:crawlarch) should be obeyed.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
