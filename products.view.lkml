view: products {
  sql_table_name: demo_db.products ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  parameter: test {
    type: string
    suggest_dimension: brand
    }

    dimension: brand {
      type: string
      sql: ${TABLE}.brand ;;
    }

  dimension: test_parameter_value_vs_population_brand {
    type: string
   sql: CASE
        WHEN ${TABLE}.brand = {% parameter test %} THEN ${TABLE}.brand
        ELSE 'Rest Of Population'
        END ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
    html: <b>{{value}}</b> ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }



  dimension: price_range {
    case: {
      when: {
      sql: ${TABLE}.retail_price <="50";;
      label: "Low Price Range"
    }
      when: {
      sql: ${TABLE}.retail_price <="150";;
      label: "Mid Price Range"
    }
      when: {
      sql: ${TABLE}.retail_price <="1000" ;;
      label: "High Price Range"
    }
      else: "Very Expensive"
   }
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: sum_test {
    type: sum
    sql: ${TABLE}.id ;;
  }

  measure: count {
    type: count
#     drill_fields: [users.id, orders.id, item_name, inventory_items.count]
  }

  measure: average_price {
    type: average
    sql: ${TABLE}.retail_price ;;
  }
}
