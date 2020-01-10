# Platform

The platform is running on DigitalOcean and it uses managed Kubernetes.

It is managed with Terraform, which is defined in this repo.

## Setting up environment

You will need few environment variables set in order to apply the changes.

These are: `DIGITALOCEAN_TOKEN`, `SPACES_ACCESS_TOKEN`, `SPACES_SECRET_KEY` and
`SPACES_BUCKET_NAME`.

You should be able to obtain all of them from the DigitalOcean API section.

You will also initialise the Terraform backend.

Run the following command:

```
terraform init \
  -backend-config="access_key=${SPACES_ACCESS_TOKEN}" \
  -backend-config="secret_key=${SPACES_SECRET_KEY}" \
  -backend-config="bucket=${SPACES_BUCKET_NAME}"
```

## Applying changes

In order to apply any changes simply run:

```
terraform apply -var name=obiwan
```

Validate the changes, and confirm the application.

