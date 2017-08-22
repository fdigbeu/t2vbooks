<?php

namespace T2V\AdminBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class DetailLivreType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
        ->add('categorie', EntityType::class, array('label' => 'Titre du sommaire', 'class' => 'T2V\AdminBundle\Entity\Categorie', 'choice_label' => 'titre', 'required' => false))
        ->add('souscategorie', EntityType::class, array('label' => 'Sous-Titre du sommaire', 'class' => 'T2V\AdminBundle\Entity\SousCategorie', 'choice_label' => 'titre', 'required' => false))
        ->add('contenu', TextareaType::class, array('label' => 'Détail du contenu'));
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'T2V\AdminBundle\Entity\DetailLivre'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 't2v_adminbundle_detaillivre';
    }


}
