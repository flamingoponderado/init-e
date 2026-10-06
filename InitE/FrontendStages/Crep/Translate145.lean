import InitE.FrontendStages.Globals.Output157
import InitE.FrontendStages.Crep.Data145
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate145_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.Declarations.globalOutput157 = some output145 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate145_eq
end InitE.FrontendStages.Crep
