package com.google.servlets;

import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;
import com.google.datamanager.DealManager;
import com.google.datamanager.DealManagerDatastore;
import com.google.datamanager.JsonFormatter;
import com.google.model.Deal;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** Servlet that handles posting deals. */
@WebServlet("/api/deals")
public class DealPostServlet extends HttpServlet {

  private final UserService userService;
  private final DealManager manager;

  public DealPostServlet() {
    userService = UserServiceFactory.getUserService();
    manager = new DealManagerDatastore();
  }

  /** Posts the deal with the given id parameter */
  @Override
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
    System.out.println("post deal");
    if (!userService.isUserLoggedIn()) {
      response.setStatus(HttpServletResponse.SC_FORBIDDEN);
      return;
    }
    // String test =
    // request.getReader().lines().collect(Collectors.joining(System.lineSeparator()));
    String description = request.getParameter("description");
    String photoBlobkey = "TODO"; // TODO connect to blobstore
    String start = request.getParameter("start");
    String end = request.getParameter("end");
    String source = request.getParameter("source");
    long poster_foreignKey = 1234; // TODO
    long restaurant_foreignKey = Long.parseLong(request.getParameter("restaurant"));
    // TODO validate all entries

    System.out.println(start);

    Deal deal =
        manager.createDeal(
            description,
            photoBlobkey,
            start,
            end,
            source,
            poster_foreignKey,
            restaurant_foreignKey);

    response.getWriter().println(JsonFormatter.getDealJson(deal));
  }
}
