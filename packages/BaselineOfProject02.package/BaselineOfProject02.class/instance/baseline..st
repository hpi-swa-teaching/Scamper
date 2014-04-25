baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'Scamper' with: [ spec requires: #('HTML') ];

                package: 'HTML-Formatter';
                package: 'HTML-Forms';
                package: 'HTML-Parser';
                package: 'HTML-Parser Entities';
                package: 'HTML-Tokenizer';
                package: 'HTML-Tests' with: [ spec requires: #('HTML') ].
            spec
                group: 'default' with: #('Scamper');
                group: 'HTML' with: #('HTML-Formatter' 'HTML-Forms' 'HTML-Parser' 'HTML-Parser Entities' 'HTML-Tokenizer');
                group: 'Tests' with: #('HTML-Tests');
                group: 'TravisCI' with: #('Tests') ]