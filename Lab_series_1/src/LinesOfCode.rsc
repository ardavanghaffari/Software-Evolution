module LinesOfCode

import IO;
import String;
import demo::common::Crawl;

list[loc] search(loc location, str extension) {

	return crawl(location, extension);

}

map[loc,int] lineCountForEachFile(list[loc] locations) {
	
	result = ();
	
	for(i<-locations) {
		result += (i:lineCountForFile(i));
	}
	
	return result;
}

int lineCountForFile(loc location) {

	int count = 0;
	
	for(i<-readFileLines(location), trim(i) != "", !startsWith(trim(i),"/"), !startsWith(trim(i),"*")) {
		
		count += 1;
		
	}
	
	return count;

}