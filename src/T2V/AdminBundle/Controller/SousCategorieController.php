<?php

namespace T2V\AdminBundle\Controller;

use T2V\AdminBundle\Entity\SousCategorie;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Souscategorie controller.
 *
 */
class SousCategorieController extends Controller
{
    /**
     * Lists all sousCategorie entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $sousCategories = $em->getRepository('T2VAdminBundle:SousCategorie')->findAll();

        return $this->render('T2VAdminBundle:SousCategorie:index.html.twig', array(
            'sousCategories' => $sousCategories,
        ));
    }

    /**
     * Creates a new sousCategorie entity.
     *
     */
    public function newAction(Request $request)
    {
        $sousCategorie = new Souscategorie();
        $form = $this->createForm('T2V\AdminBundle\Form\SousCategorieType', $sousCategorie);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($sousCategorie);
            $em->flush();

            return $this->redirectToRoute('souscategorie_show', array('id' => $sousCategorie->getId()));
        }

        return $this->render('T2VAdminBundle:SousCategorie:new.html.twig', array(
            'sousCategorie' => $sousCategorie,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a sousCategorie entity.
     *
     */
    public function showAction(SousCategorie $sousCategorie)
    {
        $deleteForm = $this->createDeleteForm($sousCategorie);

        return $this->render('T2VAdminBundle:SousCategorie:show.html.twig', array(
            'sousCategorie' => $sousCategorie,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing sousCategorie entity.
     *
     */
    public function editAction(Request $request, SousCategorie $sousCategorie)
    {
        $deleteForm = $this->createDeleteForm($sousCategorie);
        $editForm = $this->createForm('T2V\AdminBundle\Form\SousCategorieType', $sousCategorie);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('souscategorie_edit', array('id' => $sousCategorie->getId()));
        }

        return $this->render('T2VAdminBundle:SousCategorie:edit.html.twig', array(
            'sousCategorie' => $sousCategorie,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a sousCategorie entity.
     *
     */
    public function deleteAction(Request $request, SousCategorie $sousCategorie)
    {
        $form = $this->createDeleteForm($sousCategorie);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($sousCategorie);
            $em->flush();
        }

        return $this->redirectToRoute('souscategorie_index');
    }

    /**
     * Creates a form to delete a sousCategorie entity.
     *
     * @param SousCategorie $sousCategorie The sousCategorie entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(SousCategorie $sousCategorie)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('souscategorie_delete', array('id' => $sousCategorie->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
