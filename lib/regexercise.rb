class RegExercise

  def initialize(lines)
    @lines = lines
  end

  def all
    @lines.select do |line|
      line =~ /.*/
    end
  end

  def starts_with_big_b
    @lines.select do |line|
      line =~ /^B/
    end
  end

  def empties
    @lines.select do |line|
      line =~ /\A\Z/
    end
  end

  def here_or_there
    @lines.select do |line|
      line =~ /\bhere|there\b/
    end
  end

  def any_bobby
    @lines.select do |line|
      line =~ /\bbobby\b/i
    end
  end

  def email_addresses
    @lines.select do |line|
      line =~ /^[^@ ]+\@[^@ .]+\.(com|org|net)$/
    end
  end

end
