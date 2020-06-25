package com.google.model;

public class Deal {
  public long id;
  public String description;
  public String photoBlobkey;
  public String start;
  public String end;
  public String source;
  public long poster_foreignKey;
  public long restaurant_foreignKey;

  public Deal(
      long id,
      String description,
      String photoBlobkey,
      String start,
      String end,
      String source,
      long poster_foreignKey,
      long restaurant_foreignKey) {
    this.id = id;
    this.description = description;
    this.photoBlobkey = photoBlobkey;
    this.start = start;
    this.end = end;
    this.source = source;
    this.poster_foreignKey = poster_foreignKey;
    this.restaurant_foreignKey = restaurant_foreignKey;
  }
}
