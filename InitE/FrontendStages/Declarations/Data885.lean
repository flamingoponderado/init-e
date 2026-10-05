import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify869
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData885 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bo" (Flapjack.Exp.const 0#64)
def simplifiedData885 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bo" (Flapjack.Exp.const 0#64)
def original885 := Pancake.PanLang.declToHOL originalData885
def simplified885 := Pancake.PanLang.declToHOL simplifiedData885
end InitE.FrontendStages.Declarations
