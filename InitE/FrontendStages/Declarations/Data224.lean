import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify208
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData224 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "BlockErr" Flapjack.Shape.one
def simplifiedData224 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "BlockErr" Flapjack.Shape.one
def original224 := Pancake.PanLang.declToHOL originalData224
def simplified224 := Pancake.PanLang.declToHOL simplifiedData224
end InitE.FrontendStages.Declarations
