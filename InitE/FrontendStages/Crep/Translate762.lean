import InitE.FrontendStages.Globals.Output845
import InitE.FrontendStages.Crep.Data762
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate762_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.Declarations.globalOutput845 = some output762 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate762_eq
end InitE.FrontendStages.Crep
