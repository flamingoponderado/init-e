import InitE.FrontendStages.Globals.Output313
import InitE.FrontendStages.Crep.Data287
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate287_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.Declarations.globalOutput313 = some output287 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate287_eq
end InitE.FrontendStages.Crep
