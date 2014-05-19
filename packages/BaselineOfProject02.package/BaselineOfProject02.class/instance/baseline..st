baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'HTML';
		    package: 'WebClient';
		    package: 'ConfigurationOfWebClient';
                package: 'Scamper-Core' with: [ spec requires: #('HTML') ];
                package: 'Scamper-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('Scamper-Core');
                group: 'Tests' with: #('Scamper-Tests');
                group: 'TravisCI' with: #('Tests') ]