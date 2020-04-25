<?php

return PhpCsFixer\Config::create()
    ->setRules([
        '@PSR2' => true,
        'array_syntax' => ['syntax' => 'short'],
        'no_multiline_whitespace_before_semicolons' => true,
        'no_short_echo_tag' => true,
        'not_operator_with_successor_space' => true,
        'ordered_imports' => [
            'sortAlgorithm' => 'alpha',
        ],
    ])
    ->setFinder(
        PhpCsFixer\Finder::create()
            ->exclude([
                'vendor',
                'node_modules',
            ])
            ->notName('*.blade.php')
    );

