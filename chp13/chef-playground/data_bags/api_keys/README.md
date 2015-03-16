##NOTES##

Payment.json does not contain a valid API key! (just in case you thought I lost my marbles and checked in an actual api key :-) )
Payment.json is being used to test out encrypted data bags via a locally run Chef Server.

When you want to create an encrypted data bag, you need to pass the shared key as a file using the --secret-file command line option.  
Create the encrypted data bag using the following command line.
'knife data bag create api_keys --secret-file encrypted_data_bag_secret'