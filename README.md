# 🛒 WooCommerce SQL Queries – Export Products, Orders & More

🔥 **A collection of SQL queries to manage and export WooCommerce data directly from the database.**  
📌 Perfect for **store owners, developers, and data analysts** who need structured data without relying on plugins (such as WP All Import and similar).

## 🚀 What You’ll Find in This Repository
This repository contains **optimized SQL queries** to:
- ✅ **Export WooCommerce products** with price, SKU, stock, and categories.
- ✅ **Retrieve product attributes** (e.g., brand, color, size).
- ✅ **Extract order details** including customer info, order totals, and purchased items.
- ✅ **Monitor stock levels** and detect low-stock products.
- ✅ **Generate sales reports** directly from the database.
- ✅ **Export product images** with main image and gallery images.

All queries work with **WordPress + WooCommerce databases** (`MySQL` / `MariaDB`).

---

## 📂 Available Queries
| Query Name | Description |
|------------|------------|
| [`export_products.sql`](queries/export_products.sql) | Export all WooCommerce products with price, SKU, category & stock. |

WIP for other queries (will be added soon!)

> 💡 **Need more queries?** Open an issue or contribute with a Pull Request!

---

## 📖 How to Use
### 🔹 **Step 1: Access Your Database**
You can run these queries in:
- 📌 **phpMyAdmin** (most shared hosting providers)
- 📌 **MySQL CLI** (`mysql -u username -p database_name`)
- 📌 **Adminer** or any **SQL management tool**

### 🔹 **Step 2: Select Your WooCommerce Database**
If you're using phpMyAdmin, select your **WordPress database**.

### 🔹 **Step 3: Run the SQL Query**
Copy the desired SQL query from the [`queries`](queries/) folder and execute it.

### 🔹 **Step 4: Export Results**
You can **export the query result** as a `.CSV` file for analysis in **Excel, Google Sheets, or BI tools**.

---

## 🛠 Why Use These Queries Instead of Plugins?
✅ **Faster than plugins** – Direct database queries avoid unnecessary overhead.  
✅ **Customizable** – Modify the queries to fit your store’s needs.  
✅ **Avoid plugin conflicts** – No need to install extra extensions.  
✅ **Direct integration with BI tools** – Import data into Looker Studio, Power BI, or other BI tools.

---

## 🔗 Related WooCommerce Resources
📌 [WooCommerce SQL Schema](https://woocommerce.com/document/woocommerce-database-description/)  
📌 [WordPress Database Structure](https://codex.wordpress.org/Database_Description)  

---

## 🌍 Contributions & Support
💡 **Have a suggestion?** Open an [Issue](https://github.com/YOUR_USERNAME/woocommerce-sql-queries/issues).  
⭐ **Found this useful?** Star the repository and share it with the WooCommerce community!

---

🔹 **Author:** [Marco Tarantino / [GitHub Handle](https://github.com/marcotara1993/)]  
🔹 **License:** MIT  
