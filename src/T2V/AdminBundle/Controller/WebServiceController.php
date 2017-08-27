<?php

namespace T2V\AdminBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

#use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class WebServiceController extends Controller
{
	public function sommaireFormateAction()
	{
		$em = $this->getDoctrine()->getManager();
		$sommaires = $em->getRepository('T2VAdminBundle:DetailLivre')->getSommaire();
		//echo "<pre>"; print_r($sommaires); echo "</pre>";
		return $this->render('T2VAdminBundle:WebService:sommaire.html.twig', array(
				"sommaires" => $sommaires,
		));
	}
	
	public function contenuFormateAction()
	{
		$em = $this->getDoctrine()->getManager();
		$contenu = $em->getRepository('T2VAdminBundle:DetailLivre')->getContenuSommaire();
		//echo "<pre>"; print_r($contenu); echo "</pre>";
		return $this->render('T2VAdminBundle:WebService:contenu.html.twig', array(
				"contenu" => $contenu,
		));
	}
	
	public function sommaireJsonAction()
	{
		$em = $this->getDoctrine()->getManager();
		$sommaires = $em->getRepository('T2VAdminBundle:DetailLivre')->getJsonSommaire();
		return new Response($sommaires, 200 , array( 'Content-Type' => 'application/json'));
	}
	
	public function contenuJsonAction()
	{
		$em = $this->getDoctrine()->getManager();
		$contenu = $em->getRepository('T2VAdminBundle:DetailLivre')->getJsonContenuSommaire();
		return new Response($contenu, 200 , array( 'Content-Type' => 'application/json'));
	}
}
