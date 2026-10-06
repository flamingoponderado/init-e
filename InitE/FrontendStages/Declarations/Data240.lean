import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify224
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData240 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "hdr_zero8" (Flapjack.Exp.const 0#64)
def simplifiedData240 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "hdr_zero8" (Flapjack.Exp.const 0#64)
def original240 := Pancake.PanLang.declToHOL originalData240
def simplified240 := Pancake.PanLang.declToHOL simplifiedData240
end InitE.FrontendStages.Declarations
