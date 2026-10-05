import InitE.FrontendStages.Globals.Output187
import InitE.FrontendStages.Crep.Data175
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate175_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.Declarations.globalOutput187 = some output175 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate175_eq
end InitE.FrontendStages.Crep
