# This document has been downloaded from github.com/ruby/ruby.  It's an example of one of the documents I've been footnoting as part of the suggested actions in Chapter 37.

# This requests the use of an external document.
require 'csv'


class Campeonato
  # Classes like these seem to group functions together across a common usage.
  attr_accessor :jogos

  def initialize
    @jogos = []
    @times = []
    @clHash = {}
    primeira_fase
    @classificacao = CSV.read('classificacao.csv')
    # These are instance variables, with the @ in front of them.
    # If one instance of the object changes the current value of the change is local to only the object that made the change.

  end

  def add_jogo(jogo)
  	@jogos.push(jogo)
  end

  def imprime
  	@jogos.each {|x| puts "#{x.time1} venceu #{x.time2} por #{x.gols1} a #{x.gols2}" if x.gols1.to_i > x.gols2.to_i && x.gols1 != nil}
  	@jogos.each {|x| puts "#{x.time1} empatou com #{x.time2} por #{x.gols1} a #{x.gols2}" if x.gols1.to_i == x.gols2.to_i && x.gols1 != nil}
  	@jogos.each {|x| puts "#{x.time1} perdeu do #{x.time2} por #{x.gols1} a #{x.gols2}" if x.gols1.to_i < x.gols2.to_i && x.gols1 != nil}
  	true
  end

  def times
  	@jogos.each {|j| @times.push(j.time1)}
  	@times.uniq!
  end

  def classifica_hash

    @classificacao.each do |l|
      t = l[0]
      # This is a hash, not yet encountered. Looking up their usage, a Hash is a collection of key-value pairs like this: "employee" => "salary".
      # It is similar to an Array, except that indexing is done via keys of any object type, not an integer index.
      hash = { nome: l[0], fase: l[1], pts: l[2].to_i, v: l[3].to_i, e: l[3].to_i, d: l[3].to_i, sg: l[4].to_i, gp: l[5].to_i, gc: l[6].to_i }
      @clHash[t] = hash

    end

    classificar
    @clHash

  end

  def classificar
    @jogos.each {|j| pontuar(j) unless j.gols1.nil?}
    @clHash.sort_by { |k, v| v[:pts] }
    #@clHash.reverse
  end


  def pontuar(jogo)

    t1 = @clHash[jogo.time1]
    t2 = @clHash[jogo.time2]
    t1[:gp] += jogo.gols1.to_i
    t2[:gp] += jogo.gols2.to_i
    t1[:gc] += jogo.gols2.to_i
    t2[:gc] += jogo.gols1.to_i
    t1[:sg] += jogo.gols1-jogo.gols2.to_i
    t2[:sg] += jogo.gols2-jogo.gols1.to_i

    if jogo.gols1 > jogo.gols2
       t1[:v] += 1
       t2[:d] += 1
       t1[:pts] += 3

    elsif jogo.gols1 < jogo.gols2
       t1[:d] += 1
       t2[:v] += 1
       t2[:pts] += 3

    else
      # adiciona 1 ponto cada time
      t1[:pts] += 1
      t2[:pts] += 1
      t1[:e] += 1
      t2[:e] += 1
    end
  end

  def primeira_fase
  	add_jogo(Jogo.new("A1", "12-Jun", "Genus", "Nacional-AM", 1, 0))
  	add_jogo(Jogo.new("A1", "12-Jun", "Atlético-AC", "Trem", 4, 2))
  	add_jogo(Jogo.new("A1", "19-Jun", "Trem", "Genus", 2, 0))
  	add_jogo(Jogo.new("A1", "19-Jun", "Nacional-AM", "Atlético-AC", 3, 3))
   	add_jogo(Jogo.new("A1", "26-Jun", "Nacional-AM", "Trem"))
  	add_jogo(Jogo.new("A1", "26-Jun", "Genus", "Atlético-AC"))
  	add_jogo(Jogo.new("A1", "3-Jul", "Atlético-AC", "Genus"))
  	add_jogo(Jogo.new("A1", "3-Jul", "Trem", "Nacional-AM"))
  	add_jogo(Jogo.new("A1", "10-Jul", "Atlético-AC", "Nacional-AM"))
  	add_jogo(Jogo.new("A1", "10-Jul", "Genus", "Trem"))
  	add_jogo(Jogo.new("A1", "17-Jul", "Nacional-AM", "Genus"))
  	add_jogo(Jogo.new("A1", "17-Jul", "Trem", "Atlético-AC"))

  end
end

class Jogo
	attr_accessor :grupo, :texto_data, :time1, :time2, :gols1, :gols2

	def initialize(grupo, texto_data, time1, time2, gols1=nil, gols2=nil)
		@grupo = grupo
		@texto_data = texto_data
		@time1 = time1
		@time2 = time2
		@gols1 = gols1
		@gols2 = gols2
	end
end

class Time

	attr_accessor :nome, :fase, :pts, :v, :e, :d, :sg, :gp, :gc

	def initialize(nome, fase, pts, v, e, d, sg, gp, gc)
	  @nome = nome
  	@fase = fase
  	@pts = pts
  	@v = v
  	@e = e
  	@d = d
  	@gp = gp
  	@gc = gc
	end
end

# This file is a good example of focusing on the code.  As it was written with notes in a different language, it was easy for me to focus only on and trying to understand what the code itself was doing.
