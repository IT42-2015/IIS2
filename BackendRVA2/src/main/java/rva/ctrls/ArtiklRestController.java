package rva.ctrls;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import rva.jpa.Artikl;
import rva.reps.ArtiklRepository;

@RestController
@Api(tags = {"Artikl CRUD operacije"})
public class ArtiklRestController {
	@Autowired
	private ArtiklRepository artiklRepository;
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@GetMapping("artikl")
	@ApiOperation(value = "VraÄ‡a kolekciju svih artikala iz baze podataka")
	public Collection<Artikl> getArtikli(){
		return artiklRepository.findAll();
	}
	
	@GetMapping("artiklId/{id}")
	@ApiOperation(value = "VraÄ‡a artikl iz baze podataka Ä�iji je id vrednost prosleÄ‘ena kao path varijabla")
	public Artikl getArtikl(@PathVariable("id") Integer id){
		return artiklRepository.getOne(id);
	}
	
	@GetMapping("artiklNaziv/{naziv}")
	@ApiOperation(value = "VraÄ‡a artikl iz baze podataka koji u nazivu sadrÅ¾i string prosleÄ‘en kao path varijabla")
	public Collection<Artikl> getArtiklByNaziv(@PathVariable("naziv") String naziv){
		return artiklRepository.findByNazivContainingIgnoreCase(naziv);
	}
	
	@CrossOrigin
	@DeleteMapping("artikl/{id}")
	@ApiOperation(value = "BriÅ¡e artikl iz baze podataka Ä�iji je id vrednost prosleÄ‘ena kao path varijabla")
	public ResponseEntity<Artikl> deleteArtikl(@PathVariable("id") Integer id){
		if(artiklRepository.existsById(id)){
			artiklRepository.deleteById(id);
			if(id == -100)
				jdbcTemplate.execute("INSERT INTO \"artikl\"(\"id\", \"naziv\", \"proizvodjac\")VALUES(-100, 'Naziv test', 'Proizvodjac test')");
			return new ResponseEntity<>(HttpStatus.OK);
		}
		return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}
	
	// insert
	@CrossOrigin
	@PostMapping("artikl")
	@ApiOperation(value = "Upisuje artikl u bazu podataka")
	public ResponseEntity<Artikl> insertArtikl(@RequestBody Artikl artikl){
		if(artiklRepository.existsById(artikl.getId()))
				return new ResponseEntity<>(HttpStatus.CONFLICT);
		artiklRepository.save(artikl);
		return new ResponseEntity<>(HttpStatus.OK);
	}
	
	// update
	@CrossOrigin
	@PutMapping("artikl")
	@ApiOperation(value = "Modifikuje postojeÄ‡i artikl iz bazu podataka")
	public ResponseEntity<Artikl> updateArtikl(@RequestBody Artikl artikl){
		if(artiklRepository.existsById(artikl.getId())){
			artiklRepository.save(artikl);
			return new ResponseEntity<>(HttpStatus.OK);
		}
		return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}
	
}
