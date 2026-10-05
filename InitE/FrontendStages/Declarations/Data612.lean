import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify596
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData612 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "rmd_x" (Flapjack.Exp.const 0#64)
def simplifiedData612 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "rmd_x" (Flapjack.Exp.const 0#64)
def original612 := Pancake.PanLang.declToHOL originalData612
def simplified612 := Pancake.PanLang.declToHOL simplifiedData612
end InitE.FrontendStages.Declarations
