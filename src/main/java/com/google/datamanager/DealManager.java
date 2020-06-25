package com.google.datamanager;

import com.google.model.Deal;

public interface DealManager {
  public Deal createDeal(
      String description,
      String photoBlobkey,
      String start,
      String end,
      String source,
      long poster_foreignKey,
      long restaurant_foreignKey);

  public Deal readDeal(long id);

  public Deal updateDeal(Deal deal);

  public void deleteDeal(Deal deal);
}
