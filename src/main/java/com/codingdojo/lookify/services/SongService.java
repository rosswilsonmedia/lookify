package com.codingdojo.lookify.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.lookify.models.Song;
import com.codingdojo.lookify.repositories.SongRepository;

@Service
public class SongService {
    // adding the book repository as a dependency
    private final SongRepository songRepository;
    
    public SongService(SongRepository songRepository) {
        this.songRepository = songRepository;
    }
    // returns all the books
    public List<Song> allSongs() {
        return songRepository.findAll();
    }
    // creates a book
    public Song createSong(Song s) {
        return songRepository.save(s);
    }
    // retrieves a book
    public Song findSong(Long id) {
        Optional<Song> optionalSong = songRepository.findById(id);
        if(optionalSong.isPresent()) {
            return optionalSong.get();
        } else {
            return null;
        }
    }
    
    public void deleteSong(Long id) {
    	songRepository.deleteById(id);
    }
    
    public Song updateSong(Long id, String name, String artist, int rating) {
    	Song updatedSong = findSong(id);
    	if(updatedSong!=null) {
    		updatedSong.setName(name);
    		updatedSong.setArtist(artist);
    		updatedSong.setRating(rating);
    		songRepository.save(updatedSong);
    	}
    	return updatedSong;
    }
    
    public List<Song> topTen(){
    	return songRepository.findTop10ByOrderByRatingDesc();
    }
    
    public List<Song> findSongByArtistSearch(String query){
    	return songRepository.findByArtistContaining(query);
    }
}