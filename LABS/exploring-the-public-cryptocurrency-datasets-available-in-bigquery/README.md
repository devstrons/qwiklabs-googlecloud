# Exploring the Public Cryptocurrency Datasets Available in BigQuery

#### What you'll do
- Explore and perform a simple SQL query on the BigQuery public cryptocurrency datasets.
- Verify that the BigQuery public crpytocurrency dataset is correct.
- Perform a complex query that calculates the gini coeffienct for Litecoin and Dash, on a week by week basis.
- Use your SQL skills to complete two interesting queries on the bitcoin dataset.

#### Overview
This lab lets you explore the six cryptocurrency blockchain datasets released publically in BigQuery. This was introduced in the blog post Introducing six new cryptocurrencies in BigQuery Public Datasets—and how to analyze them

This is a challenge lab. This means you will not be given all the parts to tasks that are marked. You must have working knowledge of SQL.
The following is from the blog post, please read to understand the background of the lab:

Since they emerged in 2009, cryptocurrencies have experienced their share of volatility—and are a continual source of fascination. In the past year, as part of the BigQuery Public Datasets program, Google Cloud released datasets consisting of the blockchain transaction history for Bitcoin and Ethereum, to help you better understand cryptocurrency. Today, we're releasing an additional six cryptocurrency blockchains.

We are also including a set of queries and views that map all blockchain datasets to a double-entry book data structure that enables multi-chain meta-analyses, as well as integration with conventional financial record processing systems.

##### Additional blockchain datasets
The six cryptocurrency blockchain datasets we’re releasing today are Bitcoin Cash, Dash, Dogecoin, Ethereum Classic, Litecoin, and Zcash.

Five of these datasets, along with the previously published Bitcoin dataset now follow a common schema that enables comparative analyses. We are releasing this group of Bitcoin-like datasets (Bitcoin, Bitcoin Cash, Dash, Dogecoin, Litecoin and Zcash) together because they all have similar implementations, i.e., their source code is derived from Bitcoin’s. Similarly, we’re also releasing the Ethereum Classic dataset alongside the previously published Ethereum dataset, and Ethereum Classic is also using the same common schema.

##### A unified data ingest architecture
All datasets update every 24 hours via a common codebase, the Blockchain ETL ingestion framework (built with Cloud Composer, previously described here), to accommodate a variety of Bitcoin-like cryptocurrencies. While this means higher latency for loading Bitcoin blocks into BigQuery, it also means that:

We are able to ingest additional BigQuery datasets with less effort, meaning additional datasets can be onboarded more quickly in the future. We can implement a low-latency loading solution once that can be used to enable real-time streaming transactions for all blockchains.

##### Unified schema and views
Since we provided the original Bitcoin dataset last year, we’ve learned how users want to access data, and restructured the dataset accordingly. Some of these changes address performance and convenience concerns, yielding faster and lower cost queries (commonly accessed nested data are denormalized; each table is partitioned by time).

We’ve also included more data, such as script op-codes. Most Bitcoin transactions describe transfers of value not simply as a debit/credit pair, but rather as a series of functions that describe both simple transfers and more complex transactions.

Having these scripts available for Bitcoin-like datasets enables more advanced analyses similar to this smart contract analyzer that Tomasz Kolinko recently built on top of the BigQuery Ethereum dataset. For example, we can now identify and report on patterns of activity involving multi-signature wallets. This is particularly important for analyzing privacy-oriented cryptocurrencies like Zcash.

For analytics interoperability, we designed a unified schema that allows all Bitcoin-like datasets to share queries. To further interoperate with Ethereum and ERC-20 token transactions, we also created some views that abstract the blockchain ledger to be presented as a double-entry accounting ledger.
