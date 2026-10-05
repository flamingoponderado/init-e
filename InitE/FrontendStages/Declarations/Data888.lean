import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify872
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData888 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "block_hashes" (Flapjack.Exp.const 0#64)
def simplifiedData888 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "block_hashes" (Flapjack.Exp.const 0#64)
def original888 := Pancake.PanLang.declToHOL originalData888
def simplified888 := Pancake.PanLang.declToHOL simplifiedData888
end InitE.FrontendStages.Declarations
