import InitE.FrontendStages.Globals.Output61
import InitE.FrontendStages.Crep.Data56
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate56_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.Declarations.globalOutput61 = some output56 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate56_eq
end InitE.FrontendStages.Crep
