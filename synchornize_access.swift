

func synchronized(lock : AnyObject , block:() throws -> Void) rethrows
{
	objc_sync_enter(lock)
	defer // defer ensures that the lock is removed , even on exception happening in the closure
	{
		objc_sync_exit(lock)

	}
	try block()
}



