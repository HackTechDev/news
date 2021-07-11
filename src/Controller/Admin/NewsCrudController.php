<?php

namespace App\Controller\Admin;

use App\Entity\News;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class NewsCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return News::class;
    }

    
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->setLabel('ID')->setFormTypeOption('disabled','disabled'),
            TextField::new('author')->setLabel('Auteur'),
            TextField::new('title')->setLabel('Titre'),
            TextField::new('summary')->setLabel('Résumé'),
            TextField::new('link')->setLabel('Lien'),   
            TextField::new('image1')->setLabel('Image'), 
            TextField::new('tag')->setLabel('Label'),
            DateTimeField::new('created_at')->setLabel('Création'),  
        ];
    }
    
}
