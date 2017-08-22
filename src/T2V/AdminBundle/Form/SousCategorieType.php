<?php

namespace T2V\AdminBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\TextType;

class SousCategorieType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
        ->add('titre', TextType::class, array('label' => 'Titre'))
        ->add('numero', TextType::class, array('label' => 'Numéro', 'required' => false))
        ->add('categorie', EntityType::class, array('label' => 'Titre du sommaire', 'class' => 'T2V\AdminBundle\Entity\Categorie', 'choice_label' => 'titre'));
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'T2V\AdminBundle\Entity\SousCategorie'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 't2v_adminbundle_souscategorie';
    }


}
