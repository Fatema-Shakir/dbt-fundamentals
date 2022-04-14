{% macro payment(Fees) %}
    ({{ Fees }})
{% endmacro %}



/*{% macro fees_installment(Fees) %}
    ({{ Fees }})
{% endmacro %}*/


/*{% macro cents_to_dollars(column_name, precision=2) %}
    ({{ column_name }} / 100)::numeric(16, {{ precision }})
{% endmacro %}*/