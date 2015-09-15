##############################################################################
##
## Read-HostWithPrompt.ps1
##
## Read user input, with choices restricted to the list of options you
## provide.
##
## ie:
##
##  PS >$caption = "Please specify a task"
##  PS >$message = "Specify a task to run"
##  PS >$option = "&Clean Temporary Files","&Defragment Hard Drive"
##  PS >$helptext = "Clean the temporary files from the computer",
##  >>              "Run the defragment task"
##  >>
##  PS >$default = 1
##  PS >Read-HostWithPrompt $caption $message $option $helptext $default
##
##  Please specify a task
##  Specify a task to run
##  [C] Clean Temporary Files  [D] Defragment Hard Drive  [?] Help
##  (default is "D"):?
##  C - Clean the temporary files from the computer
##  D - Run the defragment task
##  [C] Clean Temporary Files  [D] Defragment Hard Drive  [?] Help
##  (default is "D"):C
##  0
##
##############################################################################
param(
    $caption = $null,
    $message = $null,
    $option = $(throw "Please specify some options."),
    $helpText = $null,
    $default = 0
    )
## Create the list of choices
[Management.Automation.Host.ChoiceDescription[]] $choices = @()
## Create a list of possible key accelerators for their options
$accelerators = New-Object System.Collections.ArrayList
## First, add a the list of numbers as possible choices
$startNumber = [int][char] '0'
$endNumber = [int][char] '9'
foreach($number in $startNumber..$endNumber)
{
    [void] $accelerators.Add([char] $number)
}
## Then, a list of characters as possible choices
$startLetter = [int][char] 'A'
$endLetter = [int][char] 'Z'
foreach($letter in $startLetter .. $endLetter)
{
    [void] $accelerators.Add([char] $letter)
}
## Go through each of the options, and add them to the choice collection
for($counter = 0; $counter -lt $option.Length; $counter++)
{
    $optionText = $option[$counter]
    ## If they didn't provide an accelerator, generate new option
    ## text for them
    if($optionText -notmatch '&')
    {
        $optionText = "&{0} - {1}" -f $accelerators[0],$optionText
    }
	    ## Now, remove their option character from the list of possibilities
    $acceleratorIndex = $optionText.IndexOf('&')
    $optionCharacter = $optionText[$acceleratorIndex + 1]
    $accelerators.Remove($optionCharacter)
    ## Create the choice
    $choice = New-Object Management.Automation.Host.ChoiceDescription $optionText
    if($helpText -and $helpText[$counter])
    {
        $choice.HelpMessage = $helpText[$counter]
    }
    ## Add the choice to the list of possible choices
    $choices += $choice
}
## Prompt for the choice, returning the item the user selected
$host.UI.PromptForChoice($caption, $message, $choices, $default)