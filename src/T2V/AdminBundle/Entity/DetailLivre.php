<?php

namespace T2V\AdminBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * DetailLivre
 *
 * @ORM\Table(name="t2v_detail_livre")
 * @ORM\Entity(repositoryClass="T2V\AdminBundle\Repository\DetailLivreRepository")
 */
class DetailLivre
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
     * @ORM\Column(name="contenu", type="text")
     */
    private $contenu;

    /**
     * @ORM\ManyToOne(targetEntity="T2V\AdminBundle\Entity\Categorie", inversedBy="detaillivres", cascade={"persist"})
     * @ORM\JoinColumn(name="categorie_id", referencedColumnName="id", onDelete="CASCADE")
     */
    private $categorie;

    /**
     * @ORM\ManyToOne(targetEntity="T2V\AdminBundle\Entity\SousCategorie", inversedBy="detaillivres", cascade={"persist"})
     * @ORM\JoinColumn(name="souscategorie_id", referencedColumnName="id", onDelete="CASCADE")
     */
    private $souscategorie;


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
     * Set contenu
     *
     * @param string $contenu
     *
     * @return DetailLivre
     */
    public function setContenu($contenu)
    {
        $this->contenu = $contenu;

        return $this;
    }

    /**
     * Get contenu
     *
     * @return string
     */
    public function getContenu()
    {
        return $this->contenu;
    }

    /**
     * Set categorie
     *
     * @param \T2V\AdminBundle\Entity\Categorie $categorie
     *
     * @return DetailLivre
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
     * Set souscategorie
     *
     * @param \T2V\AdminBundle\Entity\SousCategorie $souscategorie
     *
     * @return DetailLivre
     */
    public function setSouscategorie(\T2V\AdminBundle\Entity\SousCategorie $souscategorie = null)
    {
        $this->souscategorie = $souscategorie;

        return $this;
    }

    /**
     * Get souscategorie
     *
     * @return \T2V\AdminBundle\Entity\SousCategorie
     */
    public function getSouscategorie()
    {
        return $this->souscategorie;
    }
}
