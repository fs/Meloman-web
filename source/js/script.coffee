$ ->
  $.easing.elasout = (x, t, b, c, d) ->
    s = 1.70158
    p = 0
    a = c
    return b  if t is 0
    return b + c  if (t /= d) is 1
    p = d * .3  unless p
    if a < Math.abs(c)
      a = c
      s = p / 4
    else
      s = p / (2 * Math.PI) * Math.asin(c / a)
    a * Math.pow(2, -10 * t) * Math.sin((t * d - s) * (2 * Math.PI) / p) + c + b

  $(".video-link a").click ->
    $.scrollTo "828px", 1800,
      axis: "y"

    false

  $(".slides").carousel()
