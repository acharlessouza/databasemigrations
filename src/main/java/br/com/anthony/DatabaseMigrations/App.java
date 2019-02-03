package br.com.anthony.DatabaseMigrations;

import org.flywaydb.core.Flyway;

/**
 * Hello world!
 *
 */
public class App {
	public static void main(String[] args) {
		Flyway flyway = Flyway.configure()
				.dataSource("jdbc:postgresql://localhost:5432/databasemigration", "user", "test123").load();

		// Start the migration
		flyway.migrate();
	}
}
