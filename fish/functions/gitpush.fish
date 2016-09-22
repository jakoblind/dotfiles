function gitpush
	set pushoutput  (git push 2>&1 | sed -En 's/(.|\W)*(git push --set-upstream[A-z -\/]*)/\2/p')
        if [ $pushoutput ]
                echo "Auto running command: " $pushoutput
                eval $pushoutput
        end
end
