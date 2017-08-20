<?php

namespace T2V\AdminBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('T2VAdminBundle:Default:index.html.twig');
    }
}
