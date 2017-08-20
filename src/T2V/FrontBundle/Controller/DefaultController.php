<?php

namespace T2V\FrontBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
    	return $this->redirectToRoute('fos_user_profile_show');
    }
}
