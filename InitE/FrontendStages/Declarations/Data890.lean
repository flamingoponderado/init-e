import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify874
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData890 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "cur_si" (Flapjack.Exp.const 0#64)
def simplifiedData890 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "cur_si" (Flapjack.Exp.const 0#64)
def original890 := Pancake.PanLang.declToHOL originalData890
def simplified890 := Pancake.PanLang.declToHOL simplifiedData890
end InitE.FrontendStages.Declarations
