--need to resolve

{% macro surrogate_key(fields) %}
WITH raw_data AS (
  SELECT
    {{ fields | join(', ') }},
    ROW_NUMBER() OVER () AS surrogate_key
  FROM
    {{ ref('model') }}
)

SELECT
  {{ fields | join(', ') }},
  surrogate_key as surrogate_key_column
FROM
  raw_data
{% endmacro %}
