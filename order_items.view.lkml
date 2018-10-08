view: order_items {
  sql_table_name: demo_db.order_items ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_status {
    type: string
    sql: ${orders.status} ;;
  }
  dimension_group: returned {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.returned_at ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }

  measure: largest_order {
    type: max
    sql: ${sale_price} ;;
    value_format_name: usd
  }

  measure: avg_order {
    type: average
    sql: ${sale_price} ;;
    value_format_name: usd
  }

  measure: median_order {
    type: median
    sql: ${sale_price} ;;
    html: <center><b>{{rendered_value}}</b></center>
    value_format_name: usd
  }

  measure: count {
    type: count
    drill_fields: [id, inventory_items.id, orders.id]
  }

  measure: total_revenue {
    type: sum
    sql: ${sale_price} ;;
    value_format_name: usd
  }
}
