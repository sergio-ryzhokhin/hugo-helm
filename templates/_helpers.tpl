{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "hugo.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "hugo.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "hugo.labels" -}}
helm.sh/chart: {{ include "hugo.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: {{ include "hugo.name" . }}
{{- end -}}

{{/*
Common label selectors
*/}}
{{- define "hugo.matchLabels" -}}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/part-of: {{ include "hugo.name" . }}
{{- end -}}
