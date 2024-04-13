int u32Result  __attribute__((section(".result")));


void EU_ASSERT(int a, int b)
{
	if (a != b)
	{
		u32Result = 1;
	}
}

void RESET_EU_ASSERT(void)
{
	u32Result = 0;
}