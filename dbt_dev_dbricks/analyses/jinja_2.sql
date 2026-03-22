{%- set apples =["Gala", "Fuji", "McIntosh", "Honeycrisp"] -%}

{%- for i in apples -%}
    {% if i!="McIntosh" %}
        {{ i }}
    {% else %}
        I hate  {{i}}
    {% endif %}    
{%- endfor -%}
