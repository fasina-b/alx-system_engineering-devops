#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

/**
 * main - Create zombie processes.
 * Return: Always returns 0.
 */
int main(void)
{
	pid_t pid;
	int count = 0;

	while (count < 5)
	{
		pid = fork();
		if (pid > 0)
		{
			printf("Zombie process created, PID: %d\n", pid);
			sleep(1);
			count++;
		}
		else if (pid == 0)
		{
			exit(0);
		}
		else
		{
			perror("fork");
			exit(EXIT_FAILURE);
		}
	}

	while (1)
	{
		sleep(1);
	}

	return (EXIT_SUCCESS);
}
