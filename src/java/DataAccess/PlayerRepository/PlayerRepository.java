/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess.PlayerRepository;

import Entities.Player;
import Hibernate.FPFHibernateUtil;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Usuario
 */
public class PlayerRepository implements IPlayerRepository {

    @Override
    public void AddPlayer(Player objPlayer) {
       Session session = FPFHibernateUtil.getSessionFactory().openSession();
       session.beginTransaction();
       session.save(objPlayer);
       session.getTransaction().commit();
       session.close();
    }

    @Override
    public void DeletePlayer(int idPlayer) {
       Session session = FPFHibernateUtil.getSessionFactory().openSession();
       session.beginTransaction();
       Player objPlayer = new Player();
       objPlayer.setIdPlayer(idPlayer);
       session.delete(objPlayer);
       session.getTransaction().commit();
       session.close();
    }

    @Override
    public void UpdatePlayer(Player objPlayer) {
       Session session = FPFHibernateUtil.getSessionFactory().openSession();
       session.beginTransaction();
       session.update(objPlayer);
       session.getTransaction().commit();
       session.close();
    }

    @Override
    public List<Player> GetAllPlayers() {
       Session session = FPFHibernateUtil.getSessionFactory().openSession();
       session.beginTransaction();
       List<Player> players = null;
       String query = "from Player";
       players = (List<Player>) session.createQuery(query).list();
       session.close();
       return players;
    }
    
}
