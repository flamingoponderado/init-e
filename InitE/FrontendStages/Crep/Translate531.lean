import InitE.FrontendStages.Globals.Output578
import InitE.FrontendStages.Crep.Data531
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate531_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.Declarations.globalOutput578 = some output531 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate531_eq
end InitE.FrontendStages.Crep
