import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify84
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData100 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "keccak_pad" (Flapjack.Exp.const 0#64)
def simplifiedData100 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "keccak_pad" (Flapjack.Exp.const 0#64)
def original100 := Pancake.PanLang.declToHOL originalData100
def simplified100 := Pancake.PanLang.declToHOL simplifiedData100
end InitE.FrontendStages.Declarations
