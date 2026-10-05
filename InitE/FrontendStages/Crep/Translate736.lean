import InitE.FrontendStages.Globals.Output819
import InitE.FrontendStages.Crep.Data736
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate736_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.Declarations.globalOutput819 = some output736 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate736_eq
end InitE.FrontendStages.Crep
