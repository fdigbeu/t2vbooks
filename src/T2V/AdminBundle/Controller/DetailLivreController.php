<?php

namespace T2V\AdminBundle\Controller;

use T2V\AdminBundle\Entity\DetailLivre;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Detaillivre controller.
 *
 */
class DetailLivreController extends Controller
{
    /**
     * Lists all detailLivre entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $detailLivres = $em->getRepository('T2VAdminBundle:DetailLivre')->findAll();

        return $this->render('T2VAdminBundle:DetailLivre:index.html.twig', array(
            'detailLivres' => $detailLivres,
        ));
    }

    /**
     * Creates a new detailLivre entity.
     *
     */
    public function newAction(Request $request)
    {
        $detailLivre = new Detaillivre();
        $form = $this->createForm('T2V\AdminBundle\Form\DetailLivreType', $detailLivre);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($detailLivre);
            $em->flush();

            return $this->redirectToRoute('detaillivre_show', array('id' => $detailLivre->getId()));
        }

        return $this->render('T2VAdminBundle:DetailLivre:new.html.twig', array(
            'detailLivre' => $detailLivre,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a detailLivre entity.
     *
     */
    public function showAction(DetailLivre $detailLivre)
    {
        $deleteForm = $this->createDeleteForm($detailLivre);

        return $this->render('T2VAdminBundle:DetailLivre:show.html.twig', array(
            'detailLivre' => $detailLivre,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing detailLivre entity.
     *
     */
    public function editAction(Request $request, DetailLivre $detailLivre)
    {
        $deleteForm = $this->createDeleteForm($detailLivre);
        $editForm = $this->createForm('T2V\AdminBundle\Form\DetailLivreType', $detailLivre);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('detaillivre_edit', array('id' => $detailLivre->getId()));
        }

        return $this->render('T2VAdminBundle:DetailLivre:edit.html.twig', array(
            'detailLivre' => $detailLivre,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a detailLivre entity.
     *
     */
    public function deleteAction(Request $request, DetailLivre $detailLivre)
    {
        $form = $this->createDeleteForm($detailLivre);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($detailLivre);
            $em->flush();
        }

        return $this->redirectToRoute('detaillivre_index');
    }

    /**
     * Creates a form to delete a detailLivre entity.
     *
     * @param DetailLivre $detailLivre The detailLivre entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(DetailLivre $detailLivre)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('detaillivre_delete', array('id' => $detailLivre->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
