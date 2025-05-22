FROM datadog/agent:7

ENV DD_APM_ENABLED=true
ENV DD_APM_NON_LOCAL_TRAFFIC=true
ENV DD_LOGS_ENABLED=true
ENV DD_LOGS_CONFIG_CONTAINER_COLLECT_ALL=true
ENV DD_DOGSTATSD_NON_LOCAL_TRAFFIC=true

ARG DD_API_KEY

# Add YAML configs
COPY datadog.yaml /etc/datadog-agent/datadog.yaml
COPY conf.d/syslog.d/syslog.yaml /etc/datadog-agent/conf.d/syslog.d/

