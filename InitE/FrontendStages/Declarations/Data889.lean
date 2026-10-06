import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify873
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData889 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "block_hashes_n" (Flapjack.Exp.const 0#64)
def simplifiedData889 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "block_hashes_n" (Flapjack.Exp.const 0#64)
def original889 := Pancake.PanLang.declToHOL originalData889
def simplified889 := Pancake.PanLang.declToHOL simplifiedData889
end InitE.FrontendStages.Declarations
