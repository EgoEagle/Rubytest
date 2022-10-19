require "prawn"

# Assignment
pdf = Prawn::Document.new
pdf.text "Hello World"
pdf.render_file "assignment.pdf"
# Implicit Block
Prawn::Document.generate("implicit.pdf") do
     stroke_horizontal_line 0, 900, at: 230

end
# Explicit Block
Prawn::Document.generate("explicit.pdf") do |pdf|
  pdf.text "Hello World"
  pdf.stroke_axis
  pdf.stroke_circle [0, 0], 10
  pdf.bounding_box([100, 300], width: 300, height: 200) do
     pdf.stroke_bounds
     pdf.stroke_circle [0, 0], 10
     
end

end
