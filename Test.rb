require "prawn"
require 'prawn/table'
require "json"

# Assignment
pdf = Prawn::Document.new
pdf.text "Hello World"
pdf.render_file "assignment.pdf"
# Implicit Block
Prawn::Document.generate("implicit.pdf") do
     def print_coordinates
          text "top: #{bounds.top}"
          text "bottom: #{bounds.bottom}"
          text "left: #{bounds.left}"
          text "right: #{bounds.right}"
          text "absolute top: #{bounds.absolute_top.to_f.round(2)}"
          text "absolute bottom: #{bounds.absolute_bottom.to_f.round(2)}"
          text "absolute left: #{bounds.absolute_left.to_f.round(2)}"
          text "absolute right: #{bounds.absolute_right.to_f.round(2)}"

     end
         bounding_box([250, cursor - 300], width: 200, height: 200) do
          text 'This bounding box bounds:'
          move_down 5
          print_coordinates
          transparent(0.5) { stroke_bounds }
         end
         bounding_box([0, cursor + 400 ], width: 520, height: 300) do
          define_grid(columns: 9, rows: 3, gutter: 5)
          grid(0, 0).bounding_box do
               text "NCCER"
               
          end
          grid(0, 1).bounding_box do
               text "Name"
          end

          grid(0, 2).bounding_box do
               text "Date Scored"
          end

          grid(0, 3).bounding_box do
               text "Certification Type"
          end

          grid(0, 4).bounding_box do
               text "Credential Type"
          end
          grid(0, 5).bounding_box do
               text "Certificate Name"
          end

          grid(0, 6).bounding_box do
               text "Blue Card"
          end

          grid(0, 7).bounding_box do
               text "Silver Card"
          end

          grid(0, 8).bounding_box do
               text "Gold Card"
          end


         end

         
         

end
# Explicit Block
object = {
     fruits: {
     name: "Tony Lin",
     certificate: "Carpentry Level One",
     completion_date: "2022-10-10",
     type: "ar_batch_report",
     report_id: "34512",
     }
}

puts object[:fruits].count

Prawn::Document.generate("explicit.pdf") do 
     header_text = [[{content: "Text", colspan: 4}]]
     tb = [["h1", "h2", "h3", "h4"],
       ["d1", "d2", "d3", "d4"],
       ["d1", "d2", "d3", "d4"],
       ["d1", "d2", "d3", "d4"]]
     #puts object[:fruits]
     table(header_text + tb, header: 2)do
       row(0).font_style = :bold
     end

end
