<?php

function minify($input_file, $output_file = null) {
    $code = file_get_contents($input_file);

    // Remove comments
    $code = preg_replace('/#[^\'"\n]*/', '', $code);

    // Remove leading/trailing white space on lines
    $code = implode('', array_map('trim', explode("\n", $code)));

    // Remove blank lines
    $code = preg_replace("/(^[\r\n]*|[\r\n]+)[\s\t]*[\r\n]+/", "\n", $code);

    $code = PHP_EOL."# License: The MIT License (MIT)".
            PHP_EOL."# Author migueweb https://github.com/migueweb/".
            PHP_EOL."# Laravel aliases".
            PHP_EOL.$code;

    // Write to output file
    if ($output_file) {
        file_put_contents($output_file, $code);
        echo "Minified Bash code written to $output_file\n";
    } else {
        echo "$code\n";
    }
}

minify('laravel-aliases');