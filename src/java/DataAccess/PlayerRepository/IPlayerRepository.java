/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess.PlayerRepository;

import Entities.Player;

/**
 *
 * @author Usuario
 */
public interface IPlayerRepository {
    public void AddPlayer(Player objPlayer);
    public void DeletePlayer(int idPlayer);
    public void UpdatePlayer (int idPlayer);
}
