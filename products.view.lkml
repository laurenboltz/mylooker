view: products {
  sql_table_name: demo_db.products ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
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

  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }
}
