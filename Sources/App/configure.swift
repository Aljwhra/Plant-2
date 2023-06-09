import Fluent
import FluentPostgresDriver
import Vapor

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    app.databases.use(.postgres(
        hostname: "localhost",
        username: "aljwhraalnasser",
        password: "",
        database: "plants"),
                      as: .psql)

    app.migrations.add(CreatePlant(), to: .psql)

    // register routes
    try routes(app)
}
