<?php
namespace App\Controller;

use App\Entity\Entreprise;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\HttpFoundation\Request;
use App\Form\UtilisateurType;
use App\Entity\Utilisateur;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

class AdministrateurController extends Controller
{
    /**
     * @Route("/administrateur", name="administrateur")
     */
    public function index()
    {
       return $this->render('administrateur/index.html.twig', [
            'AdministraterControler' => 'Site Applistage',
        ]);
    }
	
	/**
     * @Route("/administrateur/entreprises", name="administrateur_entreprises")
     */
    public function entreprises()
    {
        $entreprises = $this->getDoctrine()
            ->getRepository(Entreprise::class)
            ->findAll();
        return $this->render('administrateur/entreprises.html.twig', array('entreprises'=>$entreprises));
    }
	/**
     * @Route("/administrateur/utilisateurs", name="administrateur_utilisateurs")
     */
	public function utilisateurs()
    {
        $utilisateurs = $this->getDoctrine()
            ->getRepository(Utilisateur::class)
            ->findAll();
        return $this->render('administrateur/utilisateurs.html.twig', array('utilisateurs'=>$utilisateurs));
    }

	
	/**
     * @Route("/administrateur/ajout", name="ajout_entreprise")
     */
    public function ajoutEntreprise(Request $request)
    {
        $item = new Entreprise();
        $item->setNom('');
        $item->setVille('');
        $item->setCp(0);
        $item->setAdresse('');
		$item->setMail('');
		$item->setTel('');
		$item->setActivite('');
		$item->setActive(1);
		$item->setRestePlace(3);
        $form = $this->createFormBuilder($item)
			->add('nom', TextType::class)
			->add('ville', TextType::class)
			->add('cp', TextType::class)
			->add('adresse', TextType::class)
            ->add('mail', EmailType::class)
			->add('tel', TextType::class)
			->add('activite', TextType::class)
			->add('active', TextType::class)
			->add('RestePlace', TextType::class)
			->add('ok', \Symfony\Component\Form\Extension\Core\Type\SubmitType::class, ['label' =>
                'Envoyer', 'attr' => ['class' => 'button small']])
            ->getForm();
        // Par défaut, le formulaire renvoie une demande POST au même contrôleur qui la restitue.
        if ($request->isMethod('POST')) {
            $form->submit($request->request->get($form->getName()));
            if ($form->isSubmitted() && $form->isValid()) {
                    $item = $form->getData();
                    $em = $this->getDoctrine()->getManager();
                    $em->persist($item);
                    $em->flush();
                return $this->redirectToRoute('administrateur');
            }
        }
        return $this->render('administrateur/ajout.html.twig', array(
            'form' => $form->createView(),
        ));

    }
}
