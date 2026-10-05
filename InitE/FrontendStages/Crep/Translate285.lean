import InitE.FrontendStages.Globals.Output311
import InitE.FrontendStages.Crep.Data285
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate285_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.Declarations.globalOutput311 = some output285 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate285_eq
end InitE.FrontendStages.Crep
