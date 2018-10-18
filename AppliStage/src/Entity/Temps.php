<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\TempsRepository")
 */
class Temps
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="integer")
     */
    private $tempsAttente;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTempsAttente(): ?int
    {
        return $this->tempsAttente;
    }

    public function setTempsAttente(int $tempsAttente): self
    {
        $this->tempsAttente = $tempsAttente;

        return $this;
    }
}
