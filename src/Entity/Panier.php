<?php

namespace App\Entity;

use App\Repository\PanierRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=PanierRepository::class)
 */
class Panier
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="array", nullable=true)
     */
    private $commande = [];

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCommande(): ?array
    {
        return $this->commande;
    }

    public function setCommande(?array $commande): self
    {
        $this->commande = $commande;

        return $this;
    }
}
