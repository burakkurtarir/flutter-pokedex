class PokemonHelper {
  // Pokemonun id'si verilmediği için detay linkinden okuyoruz
  String getPokemonId(String? detailLink) {
    final temp = detailLink!.split('pokemon/');
    return temp[1].split('/')[0].padLeft(3, '0');
  }

  String getPokemonImageUrl(String? detailLink) {
    final pokemonId = getPokemonId(detailLink);
    return 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/$pokemonId.png';
  }
}
