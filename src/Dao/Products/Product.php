<?php

namespace Dao\Products;

use Dao\Table;

class Product extends Table
{
    public static function getAllProducts()
    {
        $sqlstr = "SELECT * from products";

        return self::obtenerRegistros($sqlstr, []);
    }

    public static function createProduct($product_id, $nombre, $precio, $product_status)
    {
        $inssql = "INSERT INTO products(product_id, nombre, precio, product_status)
        Values (:product_id, :nombre, :precio, :product_status);";

        $params = [
            "product_id" => $product_id,
            "nombre" => $nombre,
            "precio" => $precio,
            "product_status" => $product_status,
        ];
        return self::executeNonQuery($inssql, $params);
    }
}

?>