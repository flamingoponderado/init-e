import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify83
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData99 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "keccak_st" (Flapjack.Exp.const 0#64)
def simplifiedData99 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "keccak_st" (Flapjack.Exp.const 0#64)
def original99 := Pancake.PanLang.declToHOL originalData99
def simplified99 := Pancake.PanLang.declToHOL simplifiedData99
end InitE.FrontendStages.Declarations
