import InitE.FrontendStages.Globals.Output281
import InitE.FrontendStages.Crep.Data256
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate256_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.Declarations.globalOutput281 = some output256 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate256_eq
end InitE.FrontendStages.Crep
