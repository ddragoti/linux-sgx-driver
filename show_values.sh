#!/bin/bash
#
# (C) Christof Fetzer, 2017

METRICS="sgx_nr_total_epc_pages \
    sgx_nr_free_pages \
    sgx_nr_low_pages \
    sgx_nr_high_pages \
    sgx_nr_marked_old \
    sgx_nr_evicted \
    sgx_nr_alloc_pages \
    "
MODPATH="/sys/module/isgx/parameters/"

for metric in $METRICS ; do
    echo "$metric= `cat $MODPATH/$metric`"
done