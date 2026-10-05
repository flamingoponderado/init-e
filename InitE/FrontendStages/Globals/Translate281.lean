import InitE.FrontendStages.Globals.Output281
import InitE.FrontendStages.Declarations.Data281
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate265
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate281_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified281) =
        some globalOutput281 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal281 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified281) := by trivial
theorem globalException281_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified281) = none := by rfl
#print axioms globalTranslate281_eq
end InitE.FrontendStages.Declarations
