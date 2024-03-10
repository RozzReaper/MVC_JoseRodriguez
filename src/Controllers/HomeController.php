<?php

namespace Controllers;

use Dao\Products\Product;
use Views\Renderer;

class HomeController extends PublicController{

    public function run(): void
    {
       /* Product::createProduct('ELEC002', "Mouse Gamer 3000X", 600.50, "DISPONIBLE"); */

        $viewData = [
            "nombre"=>"José Leonardo Rodriguez Zelaya",
            "mensaje"=>"Landing Page de Negocio de Electronicos.",
            "product"=> Product::getAllProducts()
        ];

        Renderer::render('home', $viewData);
        
    }
}

?>