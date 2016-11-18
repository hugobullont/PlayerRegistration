/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess.TeamRepository;

import Entities.Team;
import Hibernate.FPFHibernateUtil;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Usuario
 */
public class TeamRepository implements ITeamRepository {

    @Override
    public List<Team> GetAllTeams() {
       Session session = FPFHibernateUtil.getSessionFactory().openSession();
       session.beginTransaction();
       List<Team> teams = null;
       String query = "from Team";
       teams = (List<Team>) session.createQuery(query).list();
       session.close();
       return teams;
    }
    
}
