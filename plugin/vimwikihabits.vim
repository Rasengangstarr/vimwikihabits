function! AddHabitsToDiary()
	let habits = system('cat habits.wiki')
	let habitsAsTodos = []
	for h in split(habits, "\n")
		let habitsAsTodos = habitsAsTodos + ["- [ ] " . h]
	endfor
	echo habitsAsTodos
	exe "normal! a" . "==Habits==\n" . join(habitsAsTodos, "\n") . "\n==/Habits==\n\<Esc>"		
endfunction

function! CreateHabitTrackerForm()
	let dates = split(system('ls -l | grep -o "[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}"'), "\n")
	let habits = split(system('cat habits.wiki'), "\n")
	let datehabits = []
	for date in dates
		let habitsForDay = system("cat " . date . ".wiki | sed -n '/^==Habits==/,/^==\\/Habits==/{p;/^==\\/Habits==/q}' | grep '-'")
		let datehabits = datehabits + [map(range(len(habits)), 0)]
		for habit in split(habitsForDay, "\n")
			let indx = 0
			for h2 in habits
				if habit[6:] == h2
					if habit[3] == 'X'
						let datehabits[-1][indx] = 'X'
					endif
				endif
				let indx += 1
			endfor
		endfor

	endfor

	let otpt = ""	
	let headers = "| Dates | "
	let c = 0
	while c < len(habits) - 1
		let headers = headers . habits[c] . " | "
		let c += 1
	endwhile

	let otpt = otpt . headers . "\n"
	for date in datehabits
		let line = "| " . date . " |"
		for habit in date
			
		endfor
		let otpt = otpt . line . "\n"	
	endfor

	echo otpt 
		
endfunction

command! VimWikiHabitsInsert : call AddHabitsToDiary()
command! VimWikiHabitsGenerate : call CreateHabitTrackerForm()

