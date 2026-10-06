import InitE.FrontendStages.Globals.Output110
import InitE.FrontendStages.Crep.Data99
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate99_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.Declarations.globalOutput110 = some output99 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate99_eq
end InitE.FrontendStages.Crep
