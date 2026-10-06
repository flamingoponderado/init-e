import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify282
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData298 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "TxErr" Flapjack.Shape.one
def simplifiedData298 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "TxErr" Flapjack.Shape.one
def original298 := Pancake.PanLang.declToHOL originalData298
def simplified298 := Pancake.PanLang.declToHOL simplifiedData298
end InitE.FrontendStages.Declarations
