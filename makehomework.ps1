$email = Read-Host -Prompt "input your email"

$series =  Read-Host -Prompt "input homework series"

$problems_input = Read-Host -Prompt 'input problem numbers'

$problems = -split $problems_input 

foreach ($problem in $problems) {
$p = $problem -split "\."
$name = '.\{0}_hw_{1}_{2}_{3}.py' -f $email, $series, $p[0], $p[1] 
New-Item -Path '.' -Name $name -ItemType file -Force
}
