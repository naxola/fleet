<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Proveedores
 *
 * 
 * @ORM\Table(name="proveedores")
 * @ORM\Entity
 */
class Proveedores
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var string|null
     *
     * @ORM\Column(name="name", type="string", length=255, nullable=true)
     */
    private $name;
	/**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }
	/**
     * @return mixed
     */
    public function getName()
    {
        return $this->name;
    }
	/**
     * @param mixed $name
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }


}
