<?php

namespace T2V\AdminBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

use Doctrine\Common\Collections\ArrayCollection;

/**
 * SousCategorie
 *
 * @ORM\Table(name="t2v_sous_categorie")
 * @ORM\Entity(repositoryClass="T2V\AdminBundle\Repository\SousCategorieRepository")
 */
class SousCategorie
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
     * @ORM\Column(name="numero", type="string", length=10, nullable=true)
     */
    private $numero;
    
    /**
     * @ORM\OneToMany(targetEntity="T2V\AdminBundle\Entity\DetailLivre", mappedBy="souscategorie")
     */
    private $detaillivres;

    /**
     * @ORM\ManyToOne(targetEntity="T2V\AdminBundle\Entity\Categorie", inversedBy="souscategories", cascade={"persist"})
     * @ORM\JoinColumn(name="categorie_id", referencedColumnName="id", onDelete="CASCADE")
     */
    private $categorie;
    
    public function __construct()
    {
    	$this->detaillivres = new ArrayCollection();
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
     * @return SousCategorie
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
     * Add detaillivre
     *
     * @param \T2V\AdminBundle\Entity\DetailLivre $detaillivre
     *
     * @return SousCategorie
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
     * Set categorie
     *
     * @param \T2V\AdminBundle\Entity\Categorie $categorie
     *
     * @return SousCategorie
     */
    public function setCategorie(\T2V\AdminBundle\Entity\Categorie $categorie = null)
    {
        $this->categorie = $categorie;

        return $this;
    }

    /**
     * Get categorie
     *
     * @return \T2V\AdminBundle\Entity\Categorie
     */
    public function getCategorie()
    {
        return $this->categorie;
    }

    /**
     * Set numero
     *
     * @param string $numero
     *
     * @return SousCategorie
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
}
