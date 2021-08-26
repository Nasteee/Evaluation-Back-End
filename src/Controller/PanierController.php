<?php

namespace App\Controller;

use App\Entity\Panier;
use App\Repository\PanierRepository;
use App\Repository\ProductRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PanierController extends AbstractController
{
    /**
     * @Route("/panier/{id}",
     *     name="panier")
     */
    public function index($id, ProductRepository $productRepository, PanierRepository $panierRepository): Response
    {
        $panier = [];
        $produit = $productRepository->find($id);
        array_push($panier, $produit);

        return $this->render('panier/index.html.twig', [
            'panier' => $panier,
        ]);
    }
}
