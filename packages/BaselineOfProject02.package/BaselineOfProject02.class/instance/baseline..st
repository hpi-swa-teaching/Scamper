baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'HTML';
                package: 'Scamper' with: [ spec requires: #('HTML') ];
                package: 'Scamper-Tests' with: [ spec requires: #('Scamper') ].
            spec
                group: 'default' with: #('Scamper');
                group: 'Tests' with: #('Scamper-Tests');
                group: 'TravisCI' with: #('Tests') ]