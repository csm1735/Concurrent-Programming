CFLAGS = -Wall -O2 -fsanitize=thread
LDFLAGS = -lpthread

targets = main

all: $(targets)

clean:
	rm -f $(targets)

main: main.c
	$(CC) $(CFLAGS) $^ $(LDFLAGS) -o $@