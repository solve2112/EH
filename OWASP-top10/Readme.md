# OWASP top 10 exploits

## Command Injection Practical 


```
<?php 
    if (isset($_GET['commandstring'])) {
        $command_string = $_GET['commandstring'];

        try {
            passthru($command_string)
        } catch (Error $err) {
            echo '<p class=mt-3><b>$err</b></p>';
        }
    }
?>
```

Allows for executing $command_string using php's passthru().

## Broken Authentication

Going over sanatized inputs - using a space in front of a username to re-register an already existing user.
