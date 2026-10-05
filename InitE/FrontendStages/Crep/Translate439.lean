import InitE.FrontendStages.Globals.Output482
import InitE.FrontendStages.Crep.Data439
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate439_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.Declarations.globalOutput482 = some output439 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate439_eq
end InitE.FrontendStages.Crep
