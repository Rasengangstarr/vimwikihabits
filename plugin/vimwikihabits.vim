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
	" Get all files with dates as filenames
	
		
endfunction

command! VimWikiHabitsInsert : call AddHabitsToDiary()
