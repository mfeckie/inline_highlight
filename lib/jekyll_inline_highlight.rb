module Jekyll
  class InlineHighlightBlock < Tags::HighlightBlock

    def add_code_tag(code)
      code_attributes = [
        "class=\"highlight pad language-#{@lang.to_s.gsub('+', '-')}\"",
        "data-lang=\"#{@lang.to_s}\""
      ].join(" ")
      "<code #{code_attributes}>#{code.chomp.strip}</code>"
    end

    def render(context)
      super.strip
    end
  end
end

Liquid::Template.register_tag('ihighlight', Jekyll::InlineHighlightBlock)


