<?php

namespace T2V\AdminBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

use Doctrine\Common\Collections\ArrayCollection;

/**
 * Livre
 *
 * @ORM\Table(name="t2v_livre")
 * @ORM\Entity(repositoryClass="T2V\AdminBundle\Repository\LivreRepository")
 */
class Livre
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="titre", type="string", length=510)
     */
    private $titre;
    
    /**
     * @ORM\OneToMany(targetEntity="T2V\AdminBundle\Entity\Categorie", mappedBy="livre")
     */
    private $categories;
    
    public function __construct()
    {
    	$this->categories = new ArrayCollection();
    }


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set titre
     *
     * @param string $titre
     *
     * @return Livre
     */
    public function setTitre($titre)
    {
        $this->titre = $titre;

        return $this;
    }

    /**
     * Get titre
     *
     * @return string
     */
    public function getTitre()
    {
        return $this->titre;
    }

    /**
     * Add category
     *
     * @param \T2V\AdminBundle\Entity\Categorie $category
     *
     * @return Livre
     */
    public function addCategory(\T2V\AdminBundle\Entity\Categorie $category)
    {
        $this->categories[] = $category;

        return $this;
    }

    /**
     * Remove category
     *
     * @param \T2V\AdminBundle\Entity\Categorie $category
     */
    public function removeCategory(\T2V\AdminBundle\Entity\Categorie $category)
    {
        $this->categories->removeElement($category);
    }

    /**
     * Get categories
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getCategories()
    {
        return $this->categories;
    }
}
