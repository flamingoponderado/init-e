import InitE.FrontendStages.Globals.Output828
import InitE.FrontendStages.Crep.Data745
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate745_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.Declarations.globalOutput828 = some output745 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate745_eq
end InitE.FrontendStages.Crep
