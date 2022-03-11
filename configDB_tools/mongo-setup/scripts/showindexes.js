db.getCollectionNames().forEach( function(collname) {
    indexes=db[collname].getIndexes();
      print("Indexes for " + collname + ":");
        printjson(indexes);
});
