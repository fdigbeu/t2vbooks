<?php

namespace T2V\AdminBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class MenuController extends Controller
{
	public function indexAction($active=null)
	{
		return $this->render('T2VAdminBundle:Menu:index.html.twig', array(
			"active" => null ? "no_active" : $active,
		));
	}
}
