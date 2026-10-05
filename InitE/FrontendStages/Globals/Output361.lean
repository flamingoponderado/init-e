import InitE.FrontendStages.Declarations.Data361
import InitE.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
def globalBody361_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 16#64]))

def globalData361 : Decl (BitVec 64) := .function { name := "state_snapshot", inline := false, exported := false, params := [], body := globalBody361_0, returnShape := (Flapjack.Shape.one) }
def globalOutput361 := Pancake.PanLang.declToHOL globalData361
end InitE.FrontendStages.Declarations
