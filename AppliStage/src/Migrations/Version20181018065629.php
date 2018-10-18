<?php declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20181018065629 extends AbstractMigration
{
    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE temps (id INT AUTO_INCREMENT NOT NULL, temps_attente INT NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE entreprise CHANGE id id INT AUTO_INCREMENT NOT NULL, CHANGE nom nom VARCHAR(255) NOT NULL, CHANGE ville ville VARCHAR(255) NOT NULL, CHANGE adresse adresse VARCHAR(255) NOT NULL, CHANGE mail mail VARCHAR(255) DEFAULT NULL, CHANGE tel tel VARCHAR(255) NOT NULL, CHANGE activite activite VARCHAR(255) NOT NULL, CHANGE RestePlace resteplace INT NOT NULL, ADD PRIMARY KEY (id)');
        $this->addSql('ALTER TABLE utilisateur CHANGE idstage idstage INT NOT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('DROP TABLE temps');
        $this->addSql('ALTER TABLE entreprise MODIFY id INT NOT NULL');
        $this->addSql('ALTER TABLE entreprise DROP PRIMARY KEY');
        $this->addSql('ALTER TABLE entreprise CHANGE id id INT NOT NULL, CHANGE nom nom TINYTEXT NOT NULL COLLATE latin1_swedish_ci, CHANGE ville ville TINYTEXT NOT NULL COLLATE latin1_swedish_ci, CHANGE adresse adresse TINYTEXT NOT NULL COLLATE latin1_swedish_ci, CHANGE mail mail TINYTEXT DEFAULT NULL COLLATE latin1_swedish_ci, CHANGE tel tel TEXT DEFAULT NULL COLLATE latin1_swedish_ci, CHANGE activite activite TINYTEXT DEFAULT NULL COLLATE latin1_swedish_ci, CHANGE resteplace RestePlace INT DEFAULT NULL');
        $this->addSql('ALTER TABLE utilisateur CHANGE idstage idstage INT DEFAULT NULL');
    }
}
