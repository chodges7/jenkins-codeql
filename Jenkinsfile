pipeline {
  agent any
  stages {
    stage('Scan') {
      steps {
        sh '''
          echo with curly braces: ${GITHUB_PAT}
          echo without curly braces: $GITHUB_PAT

          codeql database create /tmp/codeql-dbs/example-repo-multi \
          --db-cluster --language javascript,python \
          --source-root .

          for language in javascript python; do
            codeql database analyze "/tmp/codeql-dbs/example-repo-multi/$language" \
            "$language-code-scanning.qls" --sarif-category="$language" \
            --format=sarif-latest --output="/tmp/example-repo-$language.sarif"

            echo ${GITHUB_PAT} | codeql github upload-results --ref=refs/heads/main \
              --sarif="/tmp/example-repo-$language.sarif" --github-auth-stdin
          done
        '''
      }
    }
  }
}
