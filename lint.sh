ERROR_FORMAT='\e[0;31m\e[1m'
SUGGESTION_FORMAT='\e[0;92m'
RESET_FORMAT='\e[0m'
ERRORS=false

function lint-rst {
  grep --line-number --color=always -i "$1" src/*.rst &&
  printf "${ERROR_FORMAT}LINT FAILURE${RESET_FORMAT}: $2\n" &&
  ERRORS=true
}

lint-rst '[^0-9.][?!.] [A-Z]' 'Missing semantic line break.'
lint-rst '[?!.]  ' 'More than one space after punctuation.'

function lint-word {
  lint-rst "\\b\($1\)\\b" "Word '$1': ${SUGGESTION_FORMAT}$2${RESET_FORMAT} https://developers.google.com/style/word-list"
}

# https://developers.google.com/style/word-list (excluding Google-specific words)
lint-word ' & ' "Don't use & instead of and in headings, text, navigation, or tables of contents; however, it's OK to use & when referencing UI elements that use &, or in table headings and diagram labels where space constraints require abbreviation. And of course it's fine to use & for technical purposes in code."
lint-word 'abort' "Avoid in general usage. Instead, use words like stop, exit, cancel, or end. In Linux, abort refers to a type of signal that terminates an abnormal process."
lint-word 'above' "Don't use. Instead, use preceding."
#lint-word 'access' "(verb) Avoid when you can. Instead, use friendlier words like see, edit, find, use, or view."
lint-word 'account name' "Don't use. Instead, use username."
lint-word 'actionable' "Avoid unless it's the clearest and simplest phrasing for your audience. Instead of using it, leave it out or replace it with a phrase like that you can act on or useful. Don't use it in the legal sense without consulting a lawyer."
lint-word 'allows you to' "Don't use. Instead, use lets you. For more information, see enable."
lint-word 'and so on' "Avoid using and so on whenever possible. For more information, see etc."
#lint-word 'application' "Don't use. Instead, use app. The industry trend is toward app. It's okay to use application as part of a common phrase such as application programming interface, but in general usage, app is preferable."
#lint-word 'argument' "(command-line context) For general usage, use option. Some command-line tools, such as the gcloud command-line tool, uses argument. For details, see command-line terminology."
lint-word 'auth[N|Z]' "Don't use. Instead, use authentication or authorization."
lint-word 'autoupdate' "Don't use. Instead, use automatically update."
lint-word 'below' "Don't use. Instead, use following."
lint-word '(black|white)list' "Avoid blacklist and whitelist. Instead, use more precise terms that are appropriate to your domain. For example: denylist/allowlist; blocklist/allowlist. If the command or code you're documenting uses the literal words blacklist or whitelist, then make clear what you're referring to."
lint-word 'cell phone' "Don't use. Instead, use mobile or mobile phone or (if you're talking about more than just phones) mobile device. Using phone (without mobile) is fine when the context is clear."
lint-word 'cellular data' "Don't use. Instead, use mobile data."
lint-word 'cellular network' "Don't use. Instead, use mobile network."
#lint-word 'check' "Don't use to refer to marking a checkbox. Instead, use select."
lint-word 'CLI' "Don't use. Instead, use command-line tool or a similar noun."
lint-word 'click here' "Don't use. For details and alternatives, see Link text."
lint-word 'cons' "Don't use. Instead, use something like disadvantages."
lint-word 'content type' "Don't use when referring to types such as application/json; instead, use media type."
lint-word 'curated roles' "Don't use. Instead, use predefined roles."
lint-word 'deselect' "Don't use to refer to clearing a check mark from a checkbox. Instead, use clear."
lint-word 'desired?' "Don't use. Instead, use a word like want or need."
lint-word 'disclosure (triangle|widget)' "Don't use. Instead, use expander arrow."
lint-word 'dummy variable' "Don't use to refer to placeholder or similar variables. Use placeholder variable instead. Also don't use if referring to the concept in statistics known as a dummy variable. Instead, use alternate terms such as indicator variable, design variable, one-hot encoding, Boolean indicator, binary variable, or qualitative variable."
lint-word 'easy' "What might be easy for you might not be easy for others. Try eliminating this word from the sentence because usually the same meaning can be conveyed without it."
lint-word 'e\.g' "Don't use. Instead, use phrases like for example or such as. Too many people mix up e.g. and i.e."
lint-word 'flag' "(command-line context) Don't use. Instead, use option. For exceptions to this rule, see command-line terminology."
lint-word 'for instance' "Avoid when possible. Instead, use for example or such as."
lint-word 'he\|him\|his\|she\|her' "Don't use. Instead, use the singular they."
lint-word 'grayed-out' "Don't use. Instead, use unavailable."
lint-word 'guru' "If possible, use a more precise term. For example, if you mean expert or teacher, use those terms."
lint-word 'hit' "Don't use as a synonym for click."
lint-word 'hover' "Don't use. Instead use hold the pointer over."
lint-word 'i\.e' "Don't use. Instead, use phrases like that is. Too many people mix up e.g. and i.e."
lint-word 'ingest' "Avoid in most cases when referring to data. Instead, use import or load."
lint-word 'in order to' "If at all possible, don't use in order to; instead, use to. Very occasionally, in order to does clarify meaning or make something easier to read."
lint-word 'just' "Don't use. Usually, you can eliminate this word from a sentence and still convey the same meaning."
lint-word 'kill' "Avoid. Instead, use words like stop, exit, cancel, or end. For exceptions to this rule, see command-line terminology."
#lint-word 'later' "(for a range of version numbers) Don't use. Instead, use higher."
lint-word 'learnings' "Don't use."
lint-word "let's" "(as a contraction of let us) Don't use if at all possible."
lint-word 'network IP address' "Don't use. Instead, use internal IP address."
lint-word 'omnibox' "Don't use. Instead, use address bar."
lint-word 'outpost' "Don't use. Instead, use channel."
lint-word 'please' "It's great to be polite, but using \"please\" in a set of instructions is overdoing the politeness."
lint-word 'pros' "Don't use. Instead, use something else, such as advantages."
lint-word 'regex' "Don't use. Instead, use regular expression."
#lint-word 'repo' "Don't use. Instead, use repository." # TODO(zcorpan) repo is used in some URLs. Revisit if we get an allowlist or can exclude URLs.
lint-word 'Representational State Transfer' "Don't use. To people unfamiliar with REST, this acronym expansion is meaningless; better to just refer to it as REST and don't bother trying to explain what it theoretically stands for."
lint-word 'RTFM' "Don't use. Instead, use something like For more information, see...."
#lint-word 'should' "Generally avoid." # TODO(zcorpan) this is a normative keyword. Revisit if we get an allowlist.
lint-word 'sign into' ""
lint-word 'sign[ -]on' "Don't use either form on its own. Use the hyphenated version as part of single sign-on."
lint-word 'simpl[ey]' "What might be simple for you might not be simple for others. Try eliminating this word from the sentence because usually the same meaning can be conveyed without it."
lint-word 'slave' "(master / slave) Avoid the word slave. Instead, use alternative terms appropriate to your domain. Some possible options include: master/{drone, worker, replica, minion, servant}; primary/{secondary, replicated}. If the command or code you're documenting uses the literal word slave, then make clear what you're referring to. For example, Invoke the secondary (slave) process directly when debugging issues between the primary and secondary processes."
lint-word 'slice and dice' "Avoid the phrase slice and dice. Instead, use alternative terms appropriate to the task at hand. Some possible options include: segment data for analysis, break information into smaller parts."
lint-word 'smartphone' "Don't use. Instead, use mobile phone or phone."
lint-word 'spin up' "As in spin up an instance. Avoid using spin up unless you're referring to a hard disk; instead, use a less colloquial term like create or start."
lint-word "ssh'ing" "Use alternatives to ssh'ing unless there is just no way around it."
lint-word 'STO[NM]ITH' "Avoid. See avoid graphically violent terms. This acronym's letters stand for an extremely graphic and violent act."
lint-word 'tarball' "Don't use. Instead, use tar file."
lint-word 'terminate' "Avoid. Instead, use words like stop, exit, cancel, or end. For exceptions to this guideline, see command-line terminology."
lint-word 'text ?box' "Don't use. Instead, use box. For more information, see Text box."
lint-word 'tl;dr:' "Don't use. Instead, use something like To summarize, or revise the sentence."
lint-word 'traditional\(ly\)?' "If possible, use a more precise term."
lint-word 'turn on' "Don't use in procedural instruction. Instead, use enable. When the sentence is not a procedural instruction, use phrases like turn on and turn off instead of enable and disable. It's also okay to use toggle for a control that switches back and forth between on and off states."
lint-word 'uncheck' "Don't use to refer to clearing a check mark from a checkbox. Instead, use clear."
lint-word 'unselect' "Don't use. Instead, use clear for checkboxes, and deselect for other UI elements."
lint-word 'via' "Don't use."
lint-word 'voila' "Don't use."
lint-word 'vs.' "Don't use vs. as an abbreviation for versus; instead, use the unabbreviated versus."
lint-word 'wish' "Don't use. Instead, use a word like want or need."
#lint-word 'World Wide Web' "Don't use. Instead, use web."
lint-word 'ymmv' "Don't use. Instead, use something like Your results might vary."

if [ "$ERRORS" = true ]; then
  exit 1;
fi
exit 0
