import InitE.FrontendStages.Globals.Output428
import InitE.FrontendStages.Declarations.Data428
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate412
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate428_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified428) =
        some globalOutput428 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal428 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified428) := by trivial
theorem globalException428_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified428) = none := by rfl
#print axioms globalTranslate428_eq
end InitE.FrontendStages.Declarations
