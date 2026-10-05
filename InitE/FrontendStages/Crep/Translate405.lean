import InitE.FrontendStages.Globals.Output448
import InitE.FrontendStages.Crep.Data405
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate405_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.Declarations.globalOutput448 = some output405 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate405_eq
end InitE.FrontendStages.Crep
