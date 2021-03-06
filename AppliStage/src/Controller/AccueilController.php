<?php

namespace App\Controller;

use App\Entity\Stage;
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
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\HttpFoundation\Session\Session;

class AccueilController extends Controller
{
    /**
     * @Route("/accueil/", name="accueil")
     */
    public function index(SessionInterface $session)
    {

        $test = $this->getUser() ? $this->getUser()->getIdstage() : '';
        $entreprises = $this->getDoctrine()->getRepository(Stage::class)->findAll();

        if($test!=''){
            $repository = $this->getDoctrine()->getRepository(Stage::class);
            $product = $repository->find($test);

        }
        else{
            $product = $entreprises;
        }

            $heureActuel = time();

            return $this->render('accueil/index.html.twig',array('entreprises'=>$entreprises,'iduser'=>$test,'selec'=>$product,'heure'=>$heureActuel));

    }

    /**
     * @Route("/inscription", name= "inscription")
     */
    public function inscriptionAction(Request $request, UserPasswordEncoderInterface $passwordEncoder)
    {
        // 1) build the form
        $user = new Utilisateur();
        $form = $this->createForm(UtilisateurType::class, $user);
        // 2) handle the submit (will only happen on POST)
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            // 3) Encode the password (you could also do this via Doctrine listener)
            $password = $passwordEncoder->encodePassword($user, $user->getPlainPassword());
            $user->setPassword($password);
            //on active par défaut
            $user->setIsActive(true);
            $user->addRole("ROLE_USER");
            //$user->addRole("ROLE_ADMIN");
            // 4) save the User!
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($user);
            $entityManager->flush();
            // ... do any other work - like sending them an email, etc
            // maybe set a "flash" success message for the user
            $this->addFlash('success', 'Votre compte à bien été enregistré.');

        }
        return $this->render('accueil/inscription.html.twig', ['form' => $form->createView(),
            'mainNavRegistration' => true, 'title' => 'Inscription']);
    }

    /**
     * @Route("/login/", name="login")
     */
    public function Login(Request $request, AuthenticationUtils $authenticationUtils) {

        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();
        // last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();

        $form = $this->get('form.factory')
            ->createNamedBuilder(null)
            ->add('_username', null, ['label' => 'Email'])
            ->add('_password', \Symfony\Component\Form\Extension\Core\Type\PasswordType::class,
                ['label' => 'Mot de passe'])
            ->add('ok', \Symfony\Component\Form\Extension\Core\Type\SubmitType::class, ['label' =>
                'Envoyer', 'attr' => ['class' => 'button small']])
            ->getForm();

        return $this->render('accueil/login.html.twig', [
            'mainNavLogin' => true, 'title' => 'Connexion',
            //
            'form' => $form->createView(),
            'last_username' => $lastUsername,
            'error' => $error,
        ]);
    }

    /**
     * @Route("/membre/declarerStage/{id}", name="declarerStage")
     */
    public function declarerStage(Request $request, $id) {

        $user=$this->getUser();

        $entityManager = $this->getDoctrine()->getManager();
        $utilisateur = $entityManager->getRepository(Utilisateur::class)->find($user->getId());
        $stage = $entityManager->getRepository(Stage::class)->find($id);

        if($stage->getResteplace()>0){
            $stage->setResteplace($stage->getResteplace()-1);
            $utilisateur->setIdstage($id);
            $entityManager->flush();
        }

        return $this->redirectToRoute('accueil');
    }

    /**
     * @Route("/membre/supprimerStage/{id}", name="supprimerStage")
     */
    public function supprimerStage(Request $request, $id) {

        $user=$this->getUser();

        $entityManager = $this->getDoctrine()->getManager();
        $utilisateur = $entityManager->getRepository(Utilisateur::class)->find($user->getId());
        $entreprise = $entityManager->getRepository(Stage::class)->find($id);

            $entreprise->setResteplace($entreprise->getResteplace()+1);
            $utilisateur->setIdstage(null);
            $entityManager->flush();

        return $this->redirectToRoute('accueil');
    }

}
