question_with_solution <- function(question, solution, image = NULL) {
	cat('::: {.webex .webex-box}\n')
	cat(question, "\n")
	cat(':::\n\n')

	cat('::: {.callout-tip collapse="true" title="Lösung"}\n')
	if (!is.null(image)) {
		cat(sprintf('<img src="%s" width="300"><br>\n', image))
	}
	cat(solution, "\n")
	cat(':::\n\n')
}

question_with_single_choice <- function(question, choices, solution) {
	cat('::: {.webex-check .webex-box}\n')
	cat(question, '\n\n')
	cat(webexercises::longmcq(choices))
	cat('\n:::\n\n')

	cat('::: {.callout-tip collapse="true" title="Lösung"}\n')
	cat(solution, '\n')
	cat(':::\n\n')
}

question_with_fitb <- function(question, answer, solution = NULL, prefix = NULL, num = TRUE) {
	cat('::: {.webex-check .webex-box}\n')
	cat(question, '<br>\n')
	if (!is.null(prefix)) {
		cat(prefix, ' ')
	}
	cat(webexercises::fitb(answer, num = num), '\n')
	cat(':::\n\n')

	if (!is.null(solution)) {
		cat('::: {.callout-tip collapse="true" title="Lösung"}\n')
		cat(solution, '\n')
		cat(':::\n\n')
	}
}

question_with_multi_fitb <- function(question, fields, solution = NULL) {
	cat('::: {.webex-check .webex-box}\n')
	cat(question, '<br><br>\n')
	for (field in fields) {
		label <- field$prefix
		if (is.null(label)) {
			label <- ''
		}
		num <- field$num
		if (is.null(num)) {
			num <- TRUE
		}
		cat(label, webexercises::fitb(field$answer, num = num), '<br>\n')
	}
	cat(':::\n\n')

	if (!is.null(solution)) {
		cat('::: {.callout-tip collapse="true" title="Lösung"}\n')
		cat(solution, '\n')
		cat(':::\n\n')
	}
}
