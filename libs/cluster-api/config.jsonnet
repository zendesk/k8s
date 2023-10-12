local config = import 'jsonnet/config.jsonnet';

config.new(
  name='cluster-api',
  specs=[
    {
      output: 'v1.5.0',
      openapi: 'http://localhost:8001/openapi/v2',
      prefix: '^io\\.x-k8s\\.cluster\\..*',
      crds: ['https://github.com/kubernetes-sigs/cluster-api/releases/download/v1.5.0/core-components.yaml'],
      localName: 'cluster-api',
    },
  ]
)
