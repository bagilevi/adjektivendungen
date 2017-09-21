module HomeHelper
  def format_article(s)
    return s if s.blank?
    if s =~ /^(m?ein|de|di|da)(e)?(.*)$/
      base, conn, ending = $1, $2, $3
      content_tag(:span, base, class: 'base') +
      content_tag(:span, conn, class: 'conn') +
      content_tag(:span, ending, class: "ending ending-#{ending}")
    else
      s
    end
  end

  def format_adjective(s)
    return s if s.blank?
    if s =~ /^(neu)(e)(.*)$/
      base, conn, ending = $1, $2, $3
      content_tag(:span, base, class: 'base') +
      content_tag(:span, conn, class: 'conn') +
      content_tag(:span, ending, class: "ending ending-#{ending}")
    else
      s
    end
  end

  def format_extra(s)
    return s if s.blank?
    s
  end

  def cell_category(fall_genus_data)
    # index 2 = definite article form
    # index 0 = article
    # last = last character
    fall_genus_data[2][0].last
  end
end
