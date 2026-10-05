import InitE.FrontendStages.Globals.Output498
import InitE.FrontendStages.Crep.Data455
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate455_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.Declarations.globalOutput498 = some output455 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate455_eq
end InitE.FrontendStages.Crep
