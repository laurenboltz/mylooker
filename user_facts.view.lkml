view: user_facts {
  derived_table: {
    sql: SELECT
        users.id  AS `users.id`,
        COUNT(DISTINCT orders.id ) AS `orders.count`,
        DATE(MIN((DATE(orders.created_at ))) ) AS `orders.user_first_order_date`,
        DATE(MAX((DATE(orders.created_at ))) ) AS `orders.user_last_order_date`,
        AVG(order_items.sale_price ) AS `order_items.avg_order`
      FROM demo_db.order_items  AS order_items
      LEFT JOIN demo_db.orders  AS orders ON order_items.order_id = orders.id
      LEFT JOIN demo_db.users  AS users ON orders.user_id = users.id

      GROUP BY 1
      ORDER BY users.id
      LIMIT 500
       ;;
  }


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: users_id {
    type: number
    sql: ${TABLE}.`users.id` ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}.`orders.count` ;;
  }

  dimension: orders_user_first_order_date {
    type: date
    sql: ${TABLE}.`orders.user_first_order_date` ;;
  }

  dimension: orders_user_last_order_date {
    type: date
    sql: ${TABLE}.`orders.user_last_order_date` ;;
  }

  dimension: order_items_avg_order {
    type: number
    sql: ${TABLE}.`order_items.avg_order` ;;
  }

  set: detail {
    fields: [users_id, orders_count, orders_user_first_order_date, orders_user_last_order_date, order_items_avg_order]
  }
}
