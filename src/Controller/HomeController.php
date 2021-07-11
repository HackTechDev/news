<?php

namespace App\Controller;

use App\Entity\News;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index(): Response
    {
        $news = $this->getDoctrine()
            ->getRepository(News::class)
            ->findBy(
                array(),
                array('id' => 'DESC')
              ); 

        return $this->render('home/index.html.twig', [
            'news' => $news,
        ]);
    }
}
