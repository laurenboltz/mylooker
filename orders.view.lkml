view: orders {
  sql_table_name: demo_db.orders ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      day_of_week_index,
      year
    ]
    sql: ${TABLE}.created_at ;;
    description: "Filter  one day after the end date you'd like to see in the results"
  }

dimension: date_tier_test {
  type: tier
  tiers: [0, 10, 20, 30, 40, 50, 60, 70, 80]
  style: integer
  sql: ${created_raw} ;;
}

  dimension: new_start_date {
    sql:  CASE WHEN ${created_day_of_week_index} >0 then ${created_day_of_week_index} -1
          ELSE 6
          END;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [users.first_name, users.last_name, users.city, users.state, count]
  }

  measure: user_last_order_date {
    type: date
    sql: MAX(${created_date}) ;;
    convert_tz: no
  }


  measure: user_first_order_date{
    type: date
    sql: MIN(${created_date}) ;;
    convert_tz: no
  }

  measure: field_name {
    type: list
    list_field: user_id
    drill_fields: [id, users.first_name, users.last_name, users.id, order_items.count]
  }
}
