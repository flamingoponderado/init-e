import InitE.FrontendStages.Globals.Output16
import InitE.FrontendStages.Crep.Data12
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate12_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.Declarations.globalOutput16 = some output12 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate12_eq
end InitE.FrontendStages.Crep
