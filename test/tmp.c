#include <stdio.h>


size_t log_cnt = 0;

void
log(const char *msg)
{
    printf("LOG{%zd}: %s\n", log_cnt, msg);

}
