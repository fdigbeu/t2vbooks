<?php

namespace T2V\AdminBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

use Doctrine\Common\Collections\ArrayCollection;

/**
 * Categorie
 *
 * @ORM\Table(name="t2v_categorie")
 * @ORM\Entity(repositoryClass="T2V\AdminBundle\Repository\CategorieRepository")
 */
class Categorie
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
     * @var string
     *
     * @ORM\Column(name="numero", type="string", length=5, nullable=true)
     */
    private $numero;

    /**
     * @ORM\ManyToOne(targetEntity="T2V\AdminBundle\Entity\Livre", inversedBy="categories", cascade={"persist"})
     * @ORM\JoinColumn(name="livre_id", referencedColumnName="id", onDelete="CASCADE")
     */
    private $livre;
    
    /**
     * @ORM\OneToMany(targetEntity="T2V\AdminBundle\Entity\DetailLivre", mappedBy="categorie")
     */
    private $detaillivres;
    
    /**
     * @ORM\OneToMany(targetEntity="T2V\AdminBundle\Entity\SousCategorie", mappedBy="categorie")
     */
    private $souscategories;
    
    public function __construct()
    {
    	$this->detaillivres = new ArrayCollection();
    	$this->souscategories = new ArrayCollection();
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
     * @return Categorie
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
     * Set numero
     *
     * @param string $numero
     *
     * @return Categorie
     */
    public function setNumero($numero)
    {
        $this->numero = $numero;

        return $this;
    }

    /**
     * Get numero
     *
     * @return string
     */
    public function getNumero()
    {
        return $this->numero;
    }

    /**
     * Set livre
     *
     * @param \T2V\AdminBundle\Entity\Livre $livre
     *
     * @return Categorie
     */
    public function setLivre(\T2V\AdminBundle\Entity\Livre $livre = null)
    {
        $this->livre = $livre;

        return $this;
    }

    /**
     * Get livre
     *
     * @return \T2V\AdminBundle\Entity\Livre
     */
    public function getLivre()
    {
        return $this->livre;
    }

    /**
     * Add detaillivre
     *
     * @param \T2V\AdminBundle\Entity\DetailLivre $detaillivre
     *
     * @return Categorie
     */
    public function addDetaillivre(\T2V\AdminBundle\Entity\DetailLivre $detaillivre)
    {
        $this->detaillivres[] = $detaillivre;

        return $this;
    }

    /**
     * Remove detaillivre
     *
     * @param \T2V\AdminBundle\Entity\DetailLivre $detaillivre
     */
    public function removeDetaillivre(\T2V\AdminBundle\Entity\DetailLivre $detaillivre)
    {
        $this->detaillivres->removeElement($detaillivre);
    }

    /**
     * Get detaillivres
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getDetaillivres()
    {
        return $this->detaillivres;
    }

    /**
     * Add souscategory
     *
     * @param \T2V\AdminBundle\Entity\SousCategorie $souscategory
     *
     * @return Categorie
     */
    public function addSouscategory(\T2V\AdminBundle\Entity\SousCategorie $souscategory)
    {
        $this->souscategories[] = $souscategory;

        return $this;
    }

    /**
     * Remove souscategory
     *
     * @param \T2V\AdminBundle\Entity\SousCategorie $souscategory
     */
    public function removeSouscategory(\T2V\AdminBundle\Entity\SousCategorie $souscategory)
    {
        $this->souscategories->removeElement($souscategory);
    }

    /**
     * Get souscategories
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getSouscategories()
    {
        return $this->souscategories;
    }
}
