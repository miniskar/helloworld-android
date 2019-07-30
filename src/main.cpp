int print_cpp();
extern "C" int print_c();
int main()
{
	print_c();
	print_cpp();
	return 0;
}
