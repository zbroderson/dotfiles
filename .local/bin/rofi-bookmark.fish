#!/usr/bin/env fish
set important_places youtube.com classroom.google.com/u/1/h oncourseconnect.com/#/dashboard github.com

for val in $important_places
	echo "https://$val"
end
