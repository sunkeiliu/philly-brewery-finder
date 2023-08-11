package com.techelevator.service;

import com.techelevator.dao.BreweryDao;
import com.techelevator.exception.DaoException;
import com.techelevator.model.Brewery;
import com.techelevator.exception.ResourceNotFoundException;
import com.techelevator.model.DayHours;
import com.techelevator.openbrewerydb.model.OpenBreweryDTO;
import com.techelevator.openbrewerydb.service.OpenBreweryDBService;
import org.springframework.stereotype.Service;
import org.springframework.web.client.ResourceAccessException;

import java.util.List;

@Service
public class BreweryService {

    private BreweryDao breweryDao;
    private OpenBreweryDBService openBreweryService;

    public BreweryService(BreweryDao breweryDao, OpenBreweryDBService openBreweryDBService) {
        this.breweryDao = breweryDao;
        this.openBreweryService = openBreweryDBService;
    }

    public List<Brewery> getBreweries() {
        List<Brewery> breweries = breweryDao.getBreweries();
        for (Brewery brewery : breweries) {
            brewery.setHoursOfOperation(breweryDao.getBreweryHours(brewery.getId()));
        }
        return breweries;
    }

    public Brewery getBreweryById(Integer id) throws ResourceNotFoundException {
        Brewery requestedBrewery = breweryDao.getBreweryById(id);
        requestedBrewery.setHoursOfOperation(breweryDao.getBreweryHours(id));
        return requestedBrewery;
    }

    public List<Brewery> getOpenDBBreweries(String city) {
        OpenBreweryDTO[] breweries;
        if (city == null) {
            breweries = openBreweryService.getOpenBreweryList();
        } else {
            breweries = openBreweryService.getOpenBreweryListByCity(city);
        }
        addNewBreweries(breweries);
        return getBreweries();
    }

    public void addNewBreweries(OpenBreweryDTO[] breweries) {
        for (OpenBreweryDTO brewery : breweries) {
            Brewery existingBrewery = breweryDao.getBreweryByOpenDbId(brewery.getId());
            if (existingBrewery == null) {
                breweryDao.addBreweryFromOpenDb(brewery);
            }
        }
    }


    public void updateBrewery(Brewery brewery, Integer id) {
        breweryDao.updateBrewery(brewery, id);
        for (DayHours dayHour : brewery.getHoursOfOperation()) {
            breweryDao.updateBreweryDays(id, dayHour);
        }
    }


//    public OpenBreweryDTO[] getOpenDBBreweriesByCity(String city) {
//        return openBreweryService.getOpenBreweryListByCity(city);
//    }


}
