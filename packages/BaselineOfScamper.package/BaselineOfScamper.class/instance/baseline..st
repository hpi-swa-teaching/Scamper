baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'HTML';
                package: 'Scamper' with: [ spec requires: #('HTML') ].
            spec
                group: 'default' with: #('Scamper');
                group: 'tests' with: #('Scamper') ]