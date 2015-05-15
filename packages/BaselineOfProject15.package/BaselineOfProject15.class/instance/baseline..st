baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'Project15-Core';
                package: 'Project15-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('Project15-Core');
                group: 'Tests' with: #('Project15Tests');
                group: 'TravisCI' with: #('Tests') ]