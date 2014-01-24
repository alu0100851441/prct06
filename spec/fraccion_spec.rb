require "lib/fraccion.rb"

describe Fraccion do
        before :each do
                @p1 = Fraccion.new(4,8)
          end
    
          describe "# almacenamiento de la fraccion" do
           it "Se almacena correctamente el numerador a" do
                   @p1.a.should eq(1)
           end
                it "Se almacena correctamente el denominador b" do
              @p1.b.should eq(2)
                end
        end
        describe "# La fraccion debe estar en su forma reducida" do
           it "Se reduce correctamente el numerador" do
              @p1.a.should eq(1)
            end
            it "Se reduce correctamente el numerador" do
              @p1.b.should eq(2)
            end
          end
        describe "# El metodo num() debe devolver el numerador" do
                 it "num() devuelve el numerador" do
              @p1.num().should eq(1)
            end
          end
        describe "# El metodo den() debe devolver el denominador" do
                 it "den() devuelve el denominador" do
              @p1.den().should eq(2)
            end
          end
        describe "# Se debe mostrar la fraccion de la forma a/b" do
                 it "to_s devuelve a/b" do
              @p1.to_s.should eq("1/2")
            end
          end
        describe "# Se debe mostrar la fraccion en formato flotante" do
                 it "to_f devuelve a/b en flotante" do
              @p1.to_f.should eq(0.5)
            end
          end
        describe "# Se deben comparar dos fracciones" do
                 it "== devuelve si dos fracciones son iguales" do
                      @p1.==(1, 2).should eq(true)
            end
                it "== devuelve si dos fracciones son iguales" do
                        @p1.==(3, 2).should eq(false)
                  end
        end
        describe "# Se calcula el valor absoluto de una faccion" do
                 it "se devuelve el valor absoluto dado por abs" do
              @p1.abs.should eq("0.5")
            end
          end
        describe "# Se calcula el recíproco de una fracción" do
                 it "se devuelve el recíproco" do
              @p1.reciprocal.should eq("2/1")
            end
          end
        describe "# Se calcula el opuesto de una fraccion con -" do
                 it "se devuelve el opuesto" do
              @p1.-.should eq("-1/2")
            end
          end
        describe "# Se suman dos fracciones y se devuelve reducida" do
                 it "se suman y se reduce" do
              @p1.+(5, 2).should eq("3/1")
            end
          end
        describe "# Se restan dos fracciones y se devuelve reducida" do
                 it "se resta y se reduce" do
              @p1.resta(5, 2).should eq("-2/1")
            end
          end
        describe "# Se multiplican dos fracciones y se devuelve reducida" do
                 it "se multiplica y se reduce" do
              @p1.*(5, 2).should eq("5/4")
            end
          end
        describe "# Se dividen dos fracciones y se devuelve reducida" do
                 it "se divide y se reduce" do
              @p1./(5, 2).should eq("1/5")
            end
          end
        describe "# Se calcula el resto dos fracciones y se devuelve reducida" do
                 it "se calcula el resto y se reduce" do
              @p1.%(1, 3).should eq("1/6")
            end
          end
        describe "# Se comprueba si una fraccion es menor que otra" do
                 it "es menor" do
              @p1.<(1, 3).should eq(false)
            end
          end
        describe "# Se comprueba si una fraccion es mayor que otra" do
                 it "es mayor" do
              @p1.>(1, 3).should eq(true)
            end
          end
        describe "# Se comprueba si una fraccion es menor o igual que otra" do
                 it "no es menor o igual" do
              @p1.<=(1, 3).should eq(false)
            end
          end
        describe "# Se comprueba si una fraccion es mayor o igual que otra" do
                 it "no es mayor o igual" do
              @p1.>=(1, 3).should eq(true)
            end
          end
        describe "# Se multiplican dos fracciones y se calcula el valor absoluto" do
                 it "se calcula la multiplicacion y el valor absoluto" do
              @p1.prueba(5, 2).should eq("1.25")
            end
          end
end
