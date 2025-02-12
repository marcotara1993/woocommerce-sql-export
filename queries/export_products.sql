SELECT 
    p.ID AS product_id,
    p.post_title AS product_name,
    pm_sku.meta_value AS product_sku,
    COALESCE(pm_price.meta_value, 0) AS regular_price,
    COALESCE(pm_sale_price.meta_value, 0) AS sale_price,
    pm_stock.meta_value AS stock_level,
    GROUP_CONCAT(t.name SEPARATOR ', ') AS product_categories -- All categories in one string
FROM wp_posts AS p
LEFT JOIN wp_postmeta AS pm_price ON p.ID = pm_price.post_id AND pm_price.meta_key = '_regular_price'
LEFT JOIN wp_postmeta AS pm_sale_price ON p.ID = pm_sale_price.post_id AND pm_sale_price.meta_key = '_sale_price'
LEFT JOIN wp_postmeta AS pm_sku ON p.ID = pm_sku.post_id AND pm_sku.meta_key = '_sku'
LEFT JOIN wp_postmeta AS pm_stock ON p.ID = pm_stock.post_id AND pm_stock.meta_key = '_stock'
LEFT JOIN wp_term_relationships tr ON p.ID = tr.object_id
LEFT JOIN wp_term_taxonomy tt ON tr.term_taxonomy_id = tt.term_taxonomy_id
LEFT JOIN wp_terms t ON tt.term_id = t.term_id
WHERE p.post_type = 'product' AND p.post_status = 'publish' AND tt.taxonomy = 'product_cat'
GROUP BY p.ID
ORDER BY p.ID
