import InitE.FrontendStages.Globals.Output121
import InitE.FrontendStages.Crep.Data110
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate110_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.Declarations.globalOutput121 = some output110 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate110_eq
end InitE.FrontendStages.Crep
