import InitE.FrontendStages.Globals.Output171
import InitE.FrontendStages.Crep.Data159
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate159_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.Declarations.globalOutput171 = some output159 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate159_eq
end InitE.FrontendStages.Crep
