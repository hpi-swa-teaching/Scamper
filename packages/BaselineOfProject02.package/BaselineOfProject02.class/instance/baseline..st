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
                package: 'Scamper' with: [ spec requires: #('HTML') ].
            spec
                group: 'default' with: #('Scamper');
                group: 'Tests' with: #('Scamper');
                group: 'TravisCI' with: #('Tests') ]