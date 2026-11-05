# Meeting Cost Timer — a tiny web server that serves one page.
# Uses the "unprivileged" nginx image, which runs as a regular (non-root) user
# on port 8080, so it also works on Kubernetes / OpenShift without changes.
FROM nginxinc/nginx-unprivileged:alpine

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 8080
