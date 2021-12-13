package org.generation.BlogPessoal1.repository;

import java.util.List;
import java.util.Optional;

import org.generation.BlogPessoal1.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
	
	public Optional<Usuario> findByUsuario(String usuario);
	
	public List<Usuario> findAllByNomeContainingIgnoreCase(String nome);

	public Usuario findByNome(String nome);
}
