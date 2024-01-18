#include <sys/stat.h>
#include <lss/linux_syscall_support.h>

int main() { 
  struct kernel_stat raw_stat;
  char foo[] = "test.txt";
  int rc = sys_stat(foo, &raw_stat);
  return 0; 
}
