import InitE.FrontendStages.Globals.Output285
import InitE.FrontendStages.Crep.Data260
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate260_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.Declarations.globalOutput285 = some output260 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate260_eq
end InitE.FrontendStages.Crep
