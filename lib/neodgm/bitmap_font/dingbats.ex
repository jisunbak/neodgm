defmodule NeoDGM.BitmapFont.Dingbats do
  require TTFLib.GlyphSource
  import TTFLib.GlyphSource

  export_glyphs do
    bmp_glyph unicode: 10102 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01111100111110
      11111000111111
      11110000111111
      11111100111111
      11111100111111
      11111100111111
      11111100111111
      01111100111110
      01111111111110
      00111111111100
      00001111110000
      """
    end

    bmp_glyph unicode: 10103 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01110000011110
      11111111001111
      11111111001111
      11111000011111
      11110011111111
      11110011111111
      11110011111111
      01110000001110
      01111111111110
      00111111111100
      00001111110000
      """
    end

    bmp_glyph unicode: 10104 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01110000011110
      11111111001111
      11111111001111
      11111000011111
      11111111001111
      11111111001111
      11111111001111
      01110000011110
      01111111111110
      00111111111100
      00001111110000
      """
    end

    bmp_glyph unicode: 10105 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01111100011110
      11111000011111
      11110010011111
      11110010011111
      11110000001111
      11111110011111
      11111110011111
      01111110011110
      01111111111110
      00111111111100
      00001111110000
      """
    end

    bmp_glyph unicode: 10106 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01110000001110
      11110011111111
      11110011111111
      11110000011111
      11111111001111
      11111111001111
      11111111001111
      01110000011110
      01111111111110
      00111111111100
      00001111110000
      """
    end

    bmp_glyph unicode: 10107 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01111000011110
      11110011111111
      11110011111111
      11110000011111
      11110011001111
      11110011001111
      11110011001111
      01111000011110
      01111111111110
      00111111111100
      00001111110000
      """
    end

    bmp_glyph unicode: 10108 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01110000001110
      11111111001111
      11111111001111
      11111110011111
      11111100111111
      11111100111111
      11111100111111
      01111100111110
      01111111111110
      00111111111100
      00001111110000
      """
    end

    bmp_glyph unicode: 10109 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01111000011110
      11110011001111
      11110011001111
      11111000011111
      11110011001111
      11110011001111
      11110011001111
      01111000011110
      01111111111110
      00111111111100
      00001111110000
      """
    end

    bmp_glyph unicode: 10110 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01111000011110
      11110011001111
      11110011001111
      11111000001111
      11111111001111
      11111111001111
      11111111001111
      01111000011110
      01111111111110
      00111111111100
      00001111110000
      """
    end

    bmp_glyph unicode: 10111 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01100110000110
      11000100110011
      11100100100011
      11100100000011
      11100100010011
      11100100110011
      11100100110011
      01100110000110
      01111111111110
      00111111111100
      00001111110000
      """
    end

    composite_glyph unicode: 0x2780 do
      component {:name, "circle.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "one.enclosed"}, 5, 1
    end

    0x2781..0x2788
    |> Enum.zip(~w(two three four five six seven eight nine))
    |> Enum.map(fn {code, name} ->
      composite_glyph unicode: code do
        component {:name, "circle.enclosure"}, 0, 0, flags: [:use_my_metrics]
        component {:name, name <> ".enclosed"}, 5, 1
      end
    end)

    composite_glyph unicode: 0x2789 do
      component {:name, "circle.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "one.enclosed2"}, 3, 1
      component {:name, "zero.enclosed"}, 7, 1
    end

    Enum.map(0x278A..0x2793, fn code ->
      composite_glyph [unicode: code], do: component({:unicode, code - 20}, 0, 0)
    end)
  end
end
