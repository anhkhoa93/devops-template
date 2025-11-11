# DevOps Templates and Examples

Collection of production-ready DevOps templates, configurations, and best practices for Kubernetes, Docker, AWS, and CI/CD pipelines.

## Structure

```
.
├── KUBERNETES/           # K8s manifests and configurations
├── DOCKER/              # Docker examples and compose files
├── CLOUD_FORMATION/     # AWS CloudFormation templates
├── AWS_CODE_PIPELINE/   # AWS CodePipeline examples
├── ARCHITECTURE/        # Architecture diagrams
├── BEST_PRACTICES/      # Security and operations checklists
└── CICD_PINELINE/       # CI/CD pipeline configurations
```

## Kubernetes

Comprehensive collection of Kubernetes manifests covering common use cases.

### Basic Resources
- Deployments with health checks
- Services (ClusterIP, NodePort, LoadBalancer)
- ConfigMaps and Secrets
- Persistent Volumes

### Advanced Patterns
- StatefulSets (Cassandra example)
- DaemonSets
- Pod affinity and anti-affinity
- Tolerations and taints
- Pod security policies

### Networking
- Ingress controllers (nginx)
- AWS ALB Ingress
- External DNS configuration
- Service mesh (Istio)
- Network policies

### Storage
- Persistent volumes
- StatefulSets with storage
- WordPress with volumes

### Autoscaling
- Horizontal Pod Autoscaler (HPA)
- Metrics server setup

### Service Discovery
- Database service examples
- Internal DNS configuration

### Security
- RBAC configurations
- Pod security policies
- Secrets management
- Non-root containers

### Advanced Features
- Mutating webhooks
- Pod lifecycle hooks
- Pod presets
- Resource quotas

### Operators
- Postgres operator examples

### Helm
- Chart templates
- Jenkins deployment
- S3 helm repository setup

### Istio Service Mesh
- Gateway configuration
- Traffic routing
- Canary deployments
- JWT authentication
- TLS configuration
- RBAC policies

### AWS EKS
- EKS-specific configurations
- Amazon Linux containers

### Serverless
- Kubeless functions (Node.js, Python)
- Event-driven examples

### Development Tools
- Skaffold configuration
- Flux GitOps

## Docker

Basic Docker setup with Python Flask application.

**Files:**
- `Dockerfile` - Multi-stage build example
- `docker-compose.yml` - Service orchestration
- `app.py` - Sample Flask application
- `requirements.txt` - Python dependencies

## AWS CloudFormation

Infrastructure as Code templates for AWS services.

**Templates:**
- `ecs.json` - ECS cluster and services
- `alb_ecs.json` - Application Load Balancer with ECS

## AWS CodePipeline

CI/CD pipeline examples for AWS.

**Examples:**
- EKS deployment with GitHub Actions and CodeBuild
- Automated container builds

## Architecture Diagrams

Visual references for common patterns:
- Kubernetes architecture
- AWS CodePipeline flow
- 3-tier application design
- Multi-region AWS setup
- Ingress architecture
- OAuth 2.0 flow

## Best Practices

### Kubernetes Security Checklist
- RBAC with IAM integration
- Control plane security
- Pod security policies
- Network security with CNI plugins
- Secrets management
- Vulnerability scanning
- Audit logging
- Monitoring and alerting
- Least privilege principle

### IAM Best Practices
- Access control guidelines
- Role management
- Policy optimization

### ECS/EKS Guidelines
- Container security
- Network isolation
- Encryption at rest
- Secrets management
- Image scanning
- High availability patterns

## Quick Start

### Kubernetes Deployment

```bash
# Basic deployment
kubectl apply -f KUBERNETES/deployment/helloworld.yml

# With ConfigMap
kubectl apply -f KUBERNETES/configmap/nginx.yml

# Ingress setup
kubectl apply -f KUBERNETES/ingress/nginx-ingress-controller.yml
kubectl apply -f KUBERNETES/ingress/ingress.yml

# Autoscaling
kubectl apply -f KUBERNETES/autoscaling/hpa-example.yml
```

### Docker

```bash
cd DOCKER
docker-compose up -d
```

### AWS CloudFormation

```bash
aws cloudformation create-stack \
  --stack-name my-ecs-stack \
  --template-body file://CLOUD_FORMATION/ecs.json \
  --capabilities CAPABILITY_IAM
```

## Common Patterns

### Blue-Green Deployment
Use service selectors to switch traffic between versions.

### Canary Deployment
Istio configuration in `KUBERNETES/istio/helloworld-v2-canary.yaml`

### Health Checks
Liveness and readiness probes in deployment examples.

### Secrets Management
- Kubernetes Secrets with volume mounts
- AWS Secrets Manager integration
- Environment variable injection

### Resource Management
- Resource requests and limits
- Resource quotas per namespace
- Pod priority classes

## Prerequisites

- kubectl (for Kubernetes)
- docker and docker-compose
- AWS CLI (for CloudFormation)
- helm (for Helm charts)
- istioctl (for Istio examples)

## Notes

- All examples use declarative YAML configurations
- Manifests are production-ready but should be customized for your environment
- Security policies should be reviewed and adjusted per requirements
- Resource limits should be tuned based on workload needs

## Usage Tips

1. Start with basic examples in `KUBERNETES/first-app/`
2. Review security checklist before production deployment
3. Use namespaces to isolate environments
4. Implement monitoring and logging from day one
5. Always define resource limits
6. Enable security features (RBAC, PSP, network policies)
7. Regular vulnerability scanning for images
8. Backup state (etcd, persistent volumes)

## References

Architecture diagrams in `ARCHITECTURE/` provide visual context for complex deployments.

Best practice checklists in `BEST_PRACTICES/` cover security and operational guidelines.

