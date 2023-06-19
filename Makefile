all: 
	gcc -std=gnu11 -O3 -Wall -Wextra -o main1  -D MAX_PRODUCER=1 -D MAX_CONSUMER=1 lfq.c test.c -lpthread 
	gcc -std=gnu11 -O3 -Wall -Wextra -o main2  -D MAX_PRODUCER=4 -D MAX_CONSUMER=4 lfq.c test.c -lpthread 
	gcc -std=gnu11 -O3 -Wall -Wextra -o main3  -D MAX_PRODUCER=100 -D MAX_CONSUMER=10 lfq.c test.c -lpthread 
	gcc -std=gnu11 -O3 -Wall -Wextra -o main4  -D MAX_PRODUCER=10 -D MAX_CONSUMER=100 lfq.c test.c -lpthread

tsan:
	gcc -std=gnu11 -O3 -Wall -Wextra -o main1  -D MAX_PRODUCER=1 -D MAX_CONSUMER=1 lfq.c test.c -lpthread -fsanitize=thread -g
	gcc -std=gnu11 -O3 -Wall -Wextra -o main2  -D MAX_PRODUCER=4 -D MAX_CONSUMER=4 lfq.c test.c -lpthread -fsanitize=thread -g
	gcc -std=gnu11 -O3 -Wall -Wextra -o main3  -D MAX_PRODUCER=100 -D MAX_CONSUMER=10 lfq.c test.c -lpthread -fsanitize=thread -g
	gcc -std=gnu11 -O3 -Wall -Wextra -o main4  -D MAX_PRODUCER=10 -D MAX_CONSUMER=100 lfq.c test.c -lpthread -fsanitize=thread -g

clean:
	rm -f main1
	rm -f main2
	rm -f main3
	rm -f main4
