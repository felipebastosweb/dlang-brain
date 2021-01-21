import std.stdio;

import std.parallelism;
import neural.brain;



void main()
{
	auto knowList = know_list();
	
	foreach (ref elem; parallel(knowList)) {
		func = elem[1];
		auto mytask = task!func();
		mytask.executeInNewThread();
		bool result = mytask.yieldForce;
		writeln(result);
	}
	
	/*
	auto logs = new double[1_000];

	foreach (i, ref elem; parallel(logs))
    {
        auto mytask = task!soma(i);
        mytask.executeInNewThread();
        double elem = mytask.yieldForce;
        writeln(elem);
    }
	*/
}
