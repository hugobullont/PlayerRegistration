/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess.TeamRepository;

import Entities.Team;
import java.util.List;

/**
 *
 * @author Usuario
 */
public interface ITeamRepository {
    
    public List<Team> GetAllTeams();
}
