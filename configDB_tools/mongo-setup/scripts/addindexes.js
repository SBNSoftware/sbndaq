db.getCollectionNames().forEach( function(collname) {
  db[collname].createIndex( { "configurations.name": 1 }, { name: "idx_configurations_name"} );
  db[collname].createIndex( { "entities.name": 1 }, { name: "idx_entities_name"} );
  db[collname].createIndex( { "version": 1 }, { name: "idx_version"} );
  db[collname].createIndex( { "configurations.name": 1, "entities.name": 1 },
    { name: "idx_configuration_name_vs_entities_name"}  );
});

db.getCollectionNames().forEach( function(collname) {
      indexes=db[collname].getIndexes();
            print("Indexes for " + collname + ":");
                    printjson(indexes);
});

